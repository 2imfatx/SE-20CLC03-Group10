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
        else if(username==""){
          flag=2;
        }
        else if(password==""){
          flag=3;
        }
      })
      if (flag == 1) {
        window.location.assign("http://localhost:3000/");
      }
      else if(flag==2)
      {
        alert("Vui lòng nhập tài khoản");
      }
      else if(flag==3)
      {
        alert("Vui lòng nhập mật khẩu");
      }
      else {
       alert("Không có tài khoản");
      }
    });
});
