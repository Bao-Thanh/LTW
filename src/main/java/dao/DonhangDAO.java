package dao;

import java.util.Date;
import java.util.List;
import model.Donhang;
import model.Khachhang;
import model.Thanhtoan;
import model.Vanchuyen;

public interface DonhangDAO {
    
     public List<Donhang> getList();
     
     public void insertDH(Donhang u);
    
}
