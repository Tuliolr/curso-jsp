<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<title>Curso JSP</title>
	
<style type="text/css">

form,h3 {
position: absolute;
top: 30%;
left: 33%;
right: 33%;
}

.msg {
position: absolute;
top: 10%;
left: 33%;
right: 33%;
font-size: 15px;
color: #664d03;
background-color: #fff3cd;
border-color: #ffecb5;
}

</style>	
	
</head>
<body>
<h3>Bem vindo ao curso de JSP</h3>

<form action="<%= request.getContextPath() %>/ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
<input type="hidden" value="<%= request.getParameter("url")  %>" name="url">

<div class="mb-3">
		<label class="form-label">Login</label>
		<input class="form-control" name="login" type="text" required>
		<div class="invalid-feedback">
			Informe o Login!
		</div>
		<div class="valid-feedback">
			ok
		</div>
	</div>
	
	<div class="mb-3">
		<label class="form-label">Senha</label>
		<input class="form-control" name="senha" type="password" required>
				<div class="invalid-feedback">
			Informe a Senha
		</div>
				<div class="valid-feedback">
			ok
		</div>
	</div>
	
		<input class="btn btn-primary" type="submit" value="Acessar">
		


</form>

<h5 class="msg">${msg}</h5>
 <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
    (function () {
    	'use strict'
    	
    	var forms = document.querySelectorAll('.needs-validation')
    	
    	Array.prototype.slice.call(forms).forEach(function (form) {
    		form.addEventListener('submit', function (event) {
    			if(!form.checkValidity()) {
    				event.preventDefault()
    				eventstopPropagation()
    			}
    			
    			form.classList.add("was-validate")
    		}, false)
    	})
    	
    })()
    
    </script>
</body>
</html>