package model;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.Cauhinh;
import model.Chitietdonhang;
import model.Khachhang;
import model.Nhacungcap;
import model.Nhomsanpham;
import model.Uathich;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-21T23:07:56")
@StaticMetamodel(Sanpham.class)
public class Sanpham_ { 

    public static volatile SingularAttribute<Sanpham, Integer> maSP;
    public static volatile CollectionAttribute<Sanpham, Uathich> uathichCollection;
    public static volatile SingularAttribute<Sanpham, Boolean> trangThai;
    public static volatile CollectionAttribute<Sanpham, Chitietdonhang> chitietdonhangCollection;
    public static volatile SingularAttribute<Sanpham, String> tenSP;
    public static volatile CollectionAttribute<Sanpham, Cauhinh> cauhinhCollection;
    public static volatile SingularAttribute<Sanpham, String> anh;
    public static volatile CollectionAttribute<Sanpham, Khachhang> khachhangCollection;
    public static volatile SingularAttribute<Sanpham, String> moTa;
    public static volatile SingularAttribute<Sanpham, Nhacungcap> nhacungcap;
    public static volatile SingularAttribute<Sanpham, Nhomsanpham> maNhomSP;
    public static volatile SingularAttribute<Sanpham, String> gia;

}