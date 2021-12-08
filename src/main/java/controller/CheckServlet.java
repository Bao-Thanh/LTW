/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.KhachhangDAOImpl;
import dao.SanphamDAOImpl;
import dao.ThanhtoanDAOImpl;
import dao.VanchuyenDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Khachhang;
import model.Sanpham;
import model.Vanchuyen;
import model.Thanhtoan;

/**
 *
 * @author hle38
 * @contributor BaoThanh
 */
public class CheckServlet extends HttpServlet {

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
        String username = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                }
            }
        }
        String tenKH = username;

        SanphamDAOImpl daosp = new SanphamDAOImpl();
        List<Sanpham> listsp = daosp.getSanphamByPrice();

        VanchuyenDAOImpl vc = new VanchuyenDAOImpl();
        List<Vanchuyen> listvc = vc.getList();

        ThanhtoanDAOImpl tt = new ThanhtoanDAOImpl();
        List<Thanhtoan> listtt = tt.getList();

        KhachhangDAOImpl khdao = new KhachhangDAOImpl();
        Khachhang kh = khdao.getKH(tenKH);

        request.setAttribute("splist", listsp);
        request.setAttribute("vclist", listvc);
        request.setAttribute("ttlist", listtt);
        request.setAttribute("kh", kh);

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
