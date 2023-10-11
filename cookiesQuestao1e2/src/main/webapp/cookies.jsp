<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Mostrar Dados e Aplicar Cor</title>
</head>
<body>
    <h2>Dados do Usuário</h2>

    <%
        Cookie[] cookies = request.getCookies();
    	String corSelecionada = "";

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("cor")) {
                    corSelecionada = cookie.getValue();
                    break;
                }
            }
        }

    %>

    <h2>
        Nome: <%= cookies != null ? cookies[0].getValue() : "" %><br>
        Idade: <%= cookies != null ? cookies[1].getValue() : "" %><br>
        Faculdade: <%= cookies != null ? cookies[2].getValue() : "" %><br>
        Curso: <%= cookies != null ? cookies[3].getValue() : "" %><br>
        Semestre: <%= cookies != null ? cookies[4].getValue() : "" %><br>
        Ano de Conclusão: <%= cookies != null ? cookies[5].getValue() : "" %><br>
        Experiência Profissional: <%= cookies != null ? cookies[6].getValue() : "" %><br>
        Cor Favorita: <%= cookies != null ? cookies[7].getValue() : "" %>
    </h2>

    <script>
        var corSelecionada = '<%= corSelecionada %>';
        if (corSelecionada === 'Vermelho') {
            document.body.style.color = 'red';
        } else if (corSelecionada === 'Azul') {
            document.body.style.color = 'blue';
        } else if (corSelecionada === 'Amarelo') {
            document.body.style.color = 'yellow';
        } else if (corSelecionada === 'Rosa') {
            document.body.style.color = 'pink';
        } else if (corSelecionada === 'Roxo') {
            document.body.style.color = 'purple';
        } else if (corSelecionada === 'Verde') {
            document.body.style.color = 'green';
        } else if (corSelecionada === 'Laranja') {
            document.body.style.color = 'orange';
        }
    </script>
</body>
</html>


