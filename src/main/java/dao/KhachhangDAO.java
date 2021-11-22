package dao;

import model.Khachhang;

public interface KhachhangDAO {

    public void addKH(Khachhang u);

    public boolean checkKH(String username);

    public Khachhang login(String username, String password);

    public void updateKH(Khachhang u);

    public Khachhang getKH(String username);

}
