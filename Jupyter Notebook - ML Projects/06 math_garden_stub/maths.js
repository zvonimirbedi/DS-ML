
var answer;
var score = 0;

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
    document.body.style.backgroundImage = `url('images/astor${score}.png')`;
    }
    else{
      alert('Well done! For more images go to Instagram!');
      score = 0;

    }
  }
  else{
    if (score>0){
      score--;
      if(score!=0){
      document.body.style.backgroundImage = `url('images/astor${score}.png')`;
    }
        alert('Check your calculations and write neater!');

    }
  }
}
