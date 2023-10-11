package cookiesQuestao1e2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Dados")
public class Dados extends HttpServlet {
	private static final long serialVersionUID = 1;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String nome = request.getParameter("nome");
			String idade = request.getParameter("idade");
			String faculdade = request.getParameter("faculdade");
			String curso = request.getParameter("curso");
			String semestre = request.getParameter("semestre");
			String anoConclusao = request.getParameter("anoConclusao");
			String experiencia = request.getParameter("experiencia");
			String cor = request.getParameter("cor");

			Cookie nomeC = new Cookie("nome", nome);
			Cookie idadeC = new Cookie("idade", idade);
			Cookie faculdadeC = new Cookie("faculdade", faculdade);
			Cookie cursoC = new Cookie("curso", curso);
			Cookie semestreC = new Cookie("semestre", semestre);
			Cookie anoConclusaoC = new Cookie("anoConclusao", anoConclusao);
			Cookie experienciaC = new Cookie("experiencia", experiencia);
			Cookie corC = new Cookie("cor", cor);

			response.addCookie(nomeC);
			response.addCookie(idadeC);
			response.addCookie(faculdadeC);
			response.addCookie(cursoC);
			response.addCookie(semestreC);
			response.addCookie(anoConclusaoC);
			response.addCookie(experienciaC);
			response.addCookie(corC);

			request.getRequestDispatcher("cookies.jsp").forward(request, response);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}