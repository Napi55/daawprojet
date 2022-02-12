const passwordInput = document.getElementById("password");
		const LoginBtn = document.getElementById("login");
		const err = document.querySelector(".password_error")
		const email = document.querySelector("#email");
		const username = document.getElementById('user')
		const forme = document.querySelector(".login_form")
		if(LoginBtn){


		LoginBtn.addEventListener("click",function(e){

			if(passwordInput.value.length < 8){

					err.innerHTML  = "<p>password must be more than 8</p>"
				
			}
		})
}const params = new URLSearchParams(window.location.search)
	username.innerHTML = params.get("email");