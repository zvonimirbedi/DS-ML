var model;


async function loadModel(){
  model = await tf.loadGraphModel('TFJS/model.json');
}

function predictImage() {
  let image = cv.imread(canvas);
  cv.cvtColor(image, image, cv.COLOR_RGBA2GRAY, 0);
  cv.threshold(image, image, 170, 255, cv.THRESH_BINARY);

  let contours = new cv.MatVector();
  let hierarchy = new cv.Mat();
  cv.findContours(image, contours, hierarchy, cv.RETR_CCOMP, cv.CHAIN_APPROX_SIMPLE);

  let cnt = contours.get(0);
  let rect = cv.boundingRect(cnt);
  image = image.roi(rect);

  var height = image.rows;
  var width = image.cols;

  if (height > width){
    height = 20;
    const scaleFactor = image.rows / height;
    width = Math.round(image.cols / scaleFactor);
  }
  else {
    width = 20;
    const scaleFactor = image.cols / width;
    width = Math.round(image.rows / scaleFactor);
  }
  let newSize = new cv.Size(width, height);
  cv.resize(image, image, newSize, 0, 0, cv.INTER_AREA);

  const LEFT = Math.ceil( 4 + ( 20 - width)/2);
  const RIGHT = Math.floor( 4 + ( 20 - width)/2);
  const TOP = Math.ceil( 4 + ( 20 - height)/2);
  const BOTTOM = Math.floor( 4 + ( 20 - height)/2);

  let scalor_color_black = new cv.Scalar(0, 0, 0, 0);
  cv.copyMakeBorder(image, image, TOP, BOTTOM, LEFT, RIGHT, cv.BORDER_CONSTANT, scalor_color_black);

  // Center of the mass
  cv.findContours(image, contours, hierarchy, cv.RETR_CCOMP, cv.CHAIN_APPROX_SIMPLE);
  cnt = contours.get(0);
  const Moments = cv.moments(cnt,false);

  const cx = Moments.m10 / Moments.m00;
  const cy = Moments.m01 / Moments.m00;

  // shift image
  const X_SHIFT = Math.round(image.cols/2.0 - cx);
  const Y_SHIFT = Math.round(image.rows/2.0 - cy);

  newSize = new cv.Size(image.cols, image.rows);
  //matrix from array
  const M = cv.matFromArray(2, 3, cv.CV_64FC1, [1, 0, X_SHIFT, 0, 1, Y_SHIFT]);
  cv.warpAffine(image, image, M, newSize, cv.INTER_LINEAR, cv.BORDER_CONSTANT, scalor_color_black);

  let pixelValues = image.data;
  pixelValues = Float32Array.from(pixelValues);
  pixelValues = pixelValues.map(function(item){
    return item / 255.0;
  });

  const X = tf.tensor([pixelValues]);
  //console.log(`Shape of Tensor: ${X.shape}`);
  //console.log(`dtype of Tensor: ${X.dtype}`);

  const predict_result = model.predict(X);
  predict_result.print();

  const output = predict_result.dataSync()[0];

  // testing delete later
  //const outputCanvas = document.createElement('CANVAS');
  //cv.imshow(outputCanvas, image);
  //document.body.appendChild(outputCanvas);
  // testing delete later

  // memory clean up
  image.delete();
  contours.delete();
  cnt.delete();
  hierarchy.delete();
  M.delete();
  X.dispose();
  predict_result.dispose();

  return output;
}
