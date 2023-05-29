package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Contact")
public class Contact extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String document = request.getParameter("document");

			if (Boolean.parseBoolean(document) == true) {
				//			資料請求希望
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("../jsp/display.jsp");
				dispatcher.forward(request, response);
			} else {
				//		資料請求無希望
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("../jsp/display_add_shiryou.jsp");
				dispatcher.forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}



	}

}
