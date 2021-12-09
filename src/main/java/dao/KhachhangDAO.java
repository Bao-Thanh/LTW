package dao;

import java.util.List;
import model.Khachhang;

public interface KhachhangDAO {

    public void addKH(Khachhang u);

    public boolean checkKH(String username);

    public Khachhang login(String username, String password);

    public void updateKH(int maKH, String tenKH, String tenTK, String matKhau,
            String diaChi, String sdt, String email);

    public Khachhang getKH(String username);

    public List<Khachhang> getList();
    
    public List<Khachhang> getList1();

}
