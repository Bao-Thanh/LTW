package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DonhangDAO;
import dao.DonhangDAOImpl;
import dao.KhachhangDAOImpl;
import dao.ThanhtoanDAOImpl;
import dao.VanchuyenDAOImpl;
import java.util.Calendar;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.RequestDispatcher;
import model.Donhang;
import model.Khachhang;
import model.Thanhtoan;
import model.Vanchuyen;

/**
 *
 * @author hle38 @ BaoThanh
 */
public class InsertServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private DonhangDAOImpl daodh = new DonhangDAOImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String tenKH = request.getParameter("txtName");
        String diaChi = request.getParameter("txtDiachi");
        String email = request.getParameter("txtEmail");
        String sdt = request.getParameter("txtPhone");
        String ngayMua = new SimpleDateFormat("dd-MM-yyyy").format(new Date());

        String tongTien = request.getParameter("tongTien");
        String maVC = request.getParameter("vanchuyen");
        String maTT = request.getParameter("thanhtoan");

        VanchuyenDAOImpl vchdao = new VanchuyenDAOImpl();
        Vanchuyen vanchuyen = vchdao.getVanchuyen(Integer.parseInt(maVC));

        ThanhtoanDAOImpl thdao = new ThanhtoanDAOImpl();
        Thanhtoan thanhtoan = thdao.getThanhbyID(Integer.parseInt(maTT));

//        KhachhangDAOImpl khdao = new KhachhangDAOImpl();
//        Khachhang khachhang = khdao.getKH(tenKH);
        String url = "/InsertServlet";
        try {
            DonhangDAOImpl daodh = new DonhangDAOImpl();
            Donhang u = new Donhang(tenKH, email, diaChi, sdt, Double.parseDouble(tongTien), ngayMua,
                    vanchuyen, thanhtoan);
            daodh.insertDH(u);
            url = "/InsertServlet";
            RequestDispatcher rd = getServletContext()
                    .getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (IOException | ServletException e) {
            response.sendRedirect("SanphamServlet");
        }
    }
}
