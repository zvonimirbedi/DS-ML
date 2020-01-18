
var answer;
var score = 0;
const ig_url = "https://www.instagram.com/this_is_astor/";

function nextQuestion(){
  const n1 = Math.floor(Math.random() * 10);
  const n2 = Math.floor(Math.random() * (10 - n1));
  document.getElementById('n1').innerHTML = n1;
  document.getElementById('n2').innerHTML = n2;
  answer = n1+n2;
}

function checkAnswer(){
  const prediction = predictImage();
  console.log(`answer: ${answer}, prediction ${prediction}`)

  if (prediction == answer ){
    score++;
    if (score <=5){
    document.getElementById("image-id").style.backgroundImage = `url('images/astor${score}.png')`;
    }
    else{
      alert('Well done! For more images go to Instagram @this_is_astor');
      score = 0;
      document.getElementById("image-id").style.backgroundImage = "none";
      window.open(ig_url, '_blank');

    }
  }
  else{
      alert('Check your calculations and write neater!');
      if (score>0){
        score--;
      document.getElementById("image-id").style.backgroundImage = `url('images/astor${score}.png')`;
      if(score<=0){
      document.getElementById("image-id").style.backgroundImage = "none";
    }

    }
  }
}
