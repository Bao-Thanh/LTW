package dao;

import java.util.List;
import model.Sanpham;

public interface SanphamDAO {

    // hiển thị danh sách sản phẩm theo giá >= 20.000
    public List<Sanpham> getListSPgia();

    // hiển thị danh sách sản phẩm
    public List<Sanpham> getList();

}
