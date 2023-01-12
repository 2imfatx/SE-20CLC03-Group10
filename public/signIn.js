let usernameInput = document.querySelector(".username input");
let passwordInput = document.querySelector(".password input");
let submitButton = document.querySelector("button");

submitButton.addEventListener("click", function (e) {
  e.preventDefault();
  let username = usernameInput.value;
  let password = passwordInput.value;
  const url = 'http://localhost:3000/api/SignIn';
  var account = [];
  var flag = 0;
  fetch('http://localhost:3000/api/SignIn')
    .then((response) => response.json())
    .then((account) => {
      account.map(item => {
        if (username == item.UserName && password == item.Password) {
          flag = 1;
        }
      })
      if (flag == 1) {
        window.location.assign("http://localhost:3000/");
      }
      else {
        console.log("Không có tài khoản");
      }
    });
});
