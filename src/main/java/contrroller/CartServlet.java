/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contrroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Sanpham;

/**
 *
 * @author PhucNguyen
 */
public class CartServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private List<Cart> cart = new ArrayList<Cart>();

    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("action");

        String id = request.getParameter("maSP");
        String tensp = request.getParameter("tensp");
        String gia = request.getParameter("gia");
        String anh = request.getParameter("anh");

        if (command.equals("buy")) {
            Sanpham p = new Sanpham(Integer.parseInt(id), tensp, anh, Double.parseDouble(gia), "", "");
            addToCart(p);
            // sau khi them vao gio hang ta se chuyen toi trang gio hang
            // can tao session de luu tru gia tri
            HttpSession session = request.getSession();

            // ta test xem gio hang co them duoc ko?
            System.out.println(cart.size());
            session.setAttribute("cart", cart);
            response.sendRedirect("cart.jsp");
        }
    }

    public String addToCart(Sanpham sp) {
        for (Cart item : cart) {
            if (item.getSanpham().getMaSP() == sp.getMaSP()) {
                item.setQuantity(item.getQuantity() + 1);
                return "cart";
            }
        }
        Cart c = new Cart();
        c.setSanpham(sp);
        c.setQuantity(1);
        cart.add(c);
        return "cart";
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
