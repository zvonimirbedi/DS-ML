const BACKGROUND_COLOUR = '#000000'
const LINE_COLOUR = '#FFFFFF'
const LINE_WIDTH = 9;

var currentX = 0;
var currentY = 0;
var previousX = 0;
var previousY = 0;

var canvas;
var context;


function loadCanvac(){
  console.log('Loading Canvas');
  canvas = document.getElementById('my-canvas');
  context = canvas.getContext('2d');

  context.fillStyle = BACKGROUND_COLOUR;
  context.fillRect(0, 0, canvas.clientWidth, canvas.clientHeight);

    context.strokeStyle = LINE_COLOUR;
    context.lineWidth = LINE_WIDTH;
    context.lineJoin = 'round';

    var isClickDown = false;

  document.addEventListener('mousedown', function (event) {
    console.log('Click is pressed!');
    isClickDown = true;
    currentX = event.clientX - canvas.offsetLeft;
    currentY = event.clientY - canvas.offsetTop;
  });

  document.addEventListener('mouseup', function (event) {
    console.log('Click is released!');
    isClickDown = false;

  });


  canvas.addEventListener('mouseleave', function (event) {
    isClickDown = false;

  });


  document.addEventListener('mousemove', function (event) {

    if(isClickDown){
    previousX = currentX;
    currentX = event.clientX - canvas.offsetLeft;

    previousY = currentY;
    currentY = event.clientY - canvas.offsetTop;

    drawLine();
  }
  });

  //Touch events
    canvas.addEventListener('touchstart', function (event) {
      console.log('Touch!');
      isClickDown = true;
      currentX = event.touches[0].clientX - canvas.offsetLeft;
      currentY = event.touches[0].clientY - canvas.offsetTop;
    });


    document.addEventListener('mouseup', function (event) {
      console.log('Click is released!');
      isClickDown = false;

    });


    canvas.addEventListener('touchend', function (event) {
      isClickDown = false;

    });
    canvas.addEventListener('touchcancel', function (event) {
      isClickDown = false;

    });


    canvas.addEventListener('touchmove', function (event) {

      if(isClickDown){
      previousX = currentX;
      currentX = event.touches[0].clientX - canvas.offsetLeft;

      previousY = currentY;
      currentY = event.touches[0].clientY - canvas.offsetTop;

      drawLine();
    }
    });

}

function clearCanvas(){
  currentX = 0;
  currentY = 0;
  previousX = 0;
  previousY = 0;
  context.fillRect(0, 0, canvas.clientWidth, canvas.clientHeight);
}

function drawLine (){
  context.beginPath();
  context.moveTo(previousX, previousY);
  context.lineTo(currentX, currentY);
  context.closePath();
  context.stroke();
}
