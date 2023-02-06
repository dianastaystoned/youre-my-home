//References
let timeLeft = document.querySelector(".time-left");
let quizContainer = document.getElementById("container");
let next = document.getElementById("next-button");
let countOfQuestion = document.querySelector(".number-of-question");
let displayContainer = document.getElementById("display-container");
let scoreContainer = document.querySelector(".score-container");
let restart = document.getElementById("restart");
let userScore = document.getElementById("user-score");
let startScreen = document.querySelector(".start-screen");
let startButton = document.getElementById("start-button");
let questionCount;
let scoreCount = 0;
let count = 11;
let countdown;

//Questions and Options array

const quizArray = [
  {
    id: "0",
    question: "When was the date we became boyfriends?",
    options: ["March 25th, 2017", "Jun 25th, 2018", "Jul 25th, 2018", "December 12th, 2021"],
    correct: "Jun 25th, 2018",
  },
  {
    id: "1",
    question: "Where was our first date?",
    options: ["Unión de San Antonio", "San Antonio", "León", "Guadalajara"],
    correct: "Unión de San Antonio",
  },
  {
    id: "2",
    question: "How we met?",
    options: ["When you went to look for your dad at my uncles house", "When we met on the street", "For your brother Daniel", "By mutual friends"],
    correct: "When you went to look for your dad at my uncles house",
  },
  {
    id: "3",
    question: "Where was our first kiss?",
    options: ["At your cousin's house", "On a binge", "On the street", "at your grandparents' house"],
    correct: "At your cousin's house",
  },
  {
    id: "4",
    question: "What do you think I love you?",
    options: ["Physical", "Money", "How you treat me", "Way of being"],
    correct: "Way of being",
  },
  {
    id: "5",
    question: "Do you still love me?",
    options: ["Yes", "No", "No, ah como chingas", "I'm with someone else"],
    correct: "Yes",
  },
  {
    id: "6",
    question: "After all that, Wanna be my Valentine?",
    options: ["Yes", "No", "Pls, stop bothering me", "YAAAAAAAAAAAAAAAAAAAAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSS I LOVEEEEEEEE YOUUUUUUUU"],
    correct: "YAAAAAAAAAAAAAAAAAAAAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSS I LOVEEEEEEEE YOUUUUUUUU",
  },
  {
    id: "7",
    question: "Wanna have a date with me?",
    options: ["Yes", "No", "YEEEEEEEEEEESSSSSSSSSSS I WANT YOUUUUUUUUUUUUUU", "Nooooo, i don't even want to be ur friend"],
    correct: "YEEEEEEEEEEESSSSSSSSSSS I WANT YOUUUUUUUUUUUUUU",
  },
];

//Restart Quiz
restart.addEventListener("click", () => {
  initial();
  displayContainer.classList.remove("hide");
  scoreContainer.classList.add("hide");
});

//Next Button
next.addEventListener(
  "click",
  (displayNext = () => {
    //increment questionCount
    questionCount += 1;
    //if last question
    if (questionCount == quizArray.length) {
      //hide question container and display score
      displayContainer.classList.add("hide");
      scoreContainer.classList.remove("hide");
      //user score
      userScore.innerHTML =
        "Your score is " + scoreCount + " out of " + questionCount;
    } else {
      //display questionCount
      countOfQuestion.innerHTML =
        questionCount + 1 + " of " + quizArray.length + " Question";
      //display quiz
      quizDisplay(questionCount);
      count = 11;
      clearInterval(countdown);
      timerDisplay();
    }
  })
);

//Timer
const timerDisplay = () => {
  countdown = setInterval(() => {
    count--;
    timeLeft.innerHTML = `${count}s`;
    if (count == 0) {
      clearInterval(countdown);
      displayNext();
    }
  }, 1000);
};

//Display quiz
const quizDisplay = (questionCount) => {
  let quizCards = document.querySelectorAll(".container-mid");
  //Hide other cards
  quizCards.forEach((card) => {
    card.classList.add("hide");
  });
  //display current question card
  quizCards[questionCount].classList.remove("hide");
};

//Quiz Creation
function quizCreator() {
  //generate quiz
  for (let i of quizArray) {
    //randomly sort options
    i.options.sort(() => Math.random() - 0.5);
    //quiz card creation
    let div = document.createElement("div");
    div.classList.add("container-mid", "hide");
    //question number
    countOfQuestion.innerHTML = 1 + " of " + quizArray.length + " Question";
    //question
    let question_DIV = document.createElement("p");
    question_DIV.classList.add("question");
    question_DIV.innerHTML = i.question;
    div.appendChild(question_DIV);
    //options
    div.innerHTML += `
    <button class="option-div" onclick="checker(this)">${i.options[0]}</button>
     <button class="option-div" onclick="checker(this)">${i.options[1]}</button>
      <button class="option-div" onclick="checker(this)">${i.options[2]}</button>
       <button class="option-div" onclick="checker(this)">${i.options[3]}</button>
    `;
    quizContainer.appendChild(div);
  }
}

//Checker Function to check if option is correct or not
function checker(userOption) {
  let userSolution = userOption.innerText;
  let question =
    document.getElementsByClassName("container-mid")[questionCount];
  let options = question.querySelectorAll(".option-div");

  //if user clicked answer == correct option stored in object
  if (userSolution === quizArray[questionCount].correct) {
    userOption.classList.add("correct");
    scoreCount++;
  } else {
    userOption.classList.add("incorrect");
    //For marking the correct option
    options.forEach((element) => {
      if (element.innerText == quizArray[questionCount].correct) {
        element.classList.add("correct");
      }
    });
  }

  //clear interval(stop timer)
  clearInterval(countdown);
  //disable all options
  options.forEach((element) => {
    element.disabled = true;
  });
}

//initial setup
function initial() {
  quizContainer.innerHTML = "";
  questionCount = 0;
  scoreCount = 0;
  count = 11;
  clearInterval(countdown);
  timerDisplay();
  quizCreator();
  quizDisplay(questionCount);
}

//when user click on start button
startButton.addEventListener("click", () => {
  startScreen.classList.add("hide");
  displayContainer.classList.remove("hide");
  initial();
});

//hide quiz and display start screen
window.onload = () => {
  startScreen.classList.remove("hide");
  displayContainer.classList.add("hide");
};
