<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
		Bem vindo ao nosso gerenciador de empresas!<br/>
		<c:if test="${not empty usuarioLogado }">
			Você está logado como ${usuarioLogado.email }	
		</c:if>
		<form action="executa?tarefa=NovaEmpresa" method="post">
			Nome: <input type="text" name="nome"/><br/>
			<input type="submit" name="enviar"/>	
		</form>
		<form action="executa" method="POST">
			<input type="hidden" name="tarefa" value="Login" /> 
			Nome: <input type="email" name="email"/>
			Senha: <input type="password" name="senha"/>
			<input type="submit" value="Login"/>
		</form>
		<form action="executa" method="POST">
			<input type="hidden" name="tarefa" value="Logout" />
			<input type="submit" value="Logout"/>	
		</form>
	</body>
</html>