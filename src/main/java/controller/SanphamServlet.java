package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.SanphamDAOImpl;
import model.Sanpham;

public class SanphamServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        SanphamDAOImpl dao = new SanphamDAOImpl();
        List<Sanpham> sanpham = dao.getList();

        request.setAttribute("sanpham", sanpham);

        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
        public static void main(String[] args) {

    }

}
