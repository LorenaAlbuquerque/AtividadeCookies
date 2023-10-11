<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Dados" method="get">
		Informe seu nome: <input type="text" name="nome" size=15><br><br> 
		Informe sua idade: <input type="number" name="idade" size=15><br><br> 
		Informe sua faculdade: <input type="text" name="faculdade" size=15><br><br> 
		Informe seu curso: <input type="text" name="curso" size=15><br><br> 
		Informe seu semestre atual: <input type="text" name="semestre" size=15><br><br> 
		Informe a previsão do ano de conclusão do curso: <input type="number" name="anoConclusao" size=15><br><br> 
		Informe sua experiência profissional: <input type="text" name="experiencia" size=15><br><br> 
		Sua cor favorita <select
			name="cor">
			<option value=Azul>Azul</option>
			<option value=Vermelho>Vermelho</option>
			<option value=Amarelo>Amarelo</option>
			<option value=Rosa>Rosa</option>
			<option value=Roxo>Roxo</option>
			<option value=Verde>Verde</option>
			<option value=Laranja>Laranja</option>
		</select> <br>
		<input type="submit" value="Enviar">
	</form>

</body>
</html>