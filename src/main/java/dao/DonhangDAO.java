package dao;

import java.util.Date;
import java.util.List;
import model.Donhang;
import model.Khachhang;
import model.Thanhtoan;
import model.Vanchuyen;

public interface DonhangDAO {
    
     public List<Donhang> getList();
     
     public void insertDH(String tenKH, String email, String diaChi, String sdt, 
             double tongTien, Date ngayMua, Khachhang khachhang, 
             Vanchuyen vanchuyen, Thanhtoan thanhtoan);
    
}
