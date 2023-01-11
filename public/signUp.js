const connection = require("../database");
const { execute } = require("../database");

let usernameInput = document.querySelector(".username input");
let passwordInput = document.querySelector(".password input");
let repasswordInput = document.querySelector(".repassword input");

let submitButton = document.querySelector("button");

submitButton.addEventListener("click", function (e) {
  e.preventDefault();
  let username = usernameInput.value;
  let password = passwordInput.value;
  let repassword = repasswordInput.value;
  const url = 'http://localhost:3000/api/SignUp';
  var account = [];
  var flag = 0;
  fetch('http://localhost:3000/api/SignUp')
    .then((response) => response.json())
    .then((account) => {
      account.map(item => {
        if (username == item.UserName && password == item.Password) {
          flag = 1;
        }
      })
      if (flag == 1) {
        console.log("Tài khoản đã tồn tại");
      }
      else {
        connection.execute
      }
    });
});
