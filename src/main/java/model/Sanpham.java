/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "sanpham")
@NamedQueries({
    @NamedQuery(name = "Sanpham.findAll", query = "SELECT s FROM Sanpham s"),
    @NamedQuery(name = "Sanpham.findByMaSP", query = "SELECT s FROM Sanpham s WHERE s.maSP = :maSP"),
    @NamedQuery(name = "Sanpham.findByTenSP", query = "SELECT s FROM Sanpham s WHERE s.tenSP = :tenSP"),
    @NamedQuery(name = "Sanpham.findByAnh", query = "SELECT s FROM Sanpham s WHERE s.anh = :anh"),
    @NamedQuery(name = "Sanpham.findByGia", query = "SELECT s FROM Sanpham s WHERE s.gia = :gia"),
    @NamedQuery(name = "Sanpham.findByMoTa", query = "SELECT s FROM Sanpham s WHERE s.moTa = :moTa"),
    @NamedQuery(name = "Sanpham.findByTrangThai", query = "SELECT s FROM Sanpham s WHERE s.trangThai = :trangThai"),
    @NamedQuery(name = "Sanpham.findByThuongHieu", query = "SELECT s FROM Sanpham s WHERE s.thuongHieu = :thuongHieu")})
public class Sanpham implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaSP")
    private Integer maSP;
    @Size(max = 500)
    @Column(name = "TenSP")
    private String tenSP;
    @Size(max = 500)
    @Column(name = "Anh")
    private String anh;
    @Size(max = 500)
    @Column(name = "Gia")
    private String gia;
    @Size(max = 500)
    @Column(name = "MoTa")
    private String moTa;
    @Column(name = "TrangThai")
    private Boolean trangThai;
    @Size(max = 500)
    @Column(name = "ThuongHieu")
    private String thuongHieu;
    @JoinTable(name = "danhgia", joinColumns = {
        @JoinColumn(name = "MaSP", referencedColumnName = "MaSP"),
        @JoinColumn(name = "MaSP", referencedColumnName = "MaSP")}, inverseJoinColumns = {
        @JoinColumn(name = "MaKH", referencedColumnName = "MaKH"),
        @JoinColumn(name = "MaKH", referencedColumnName = "MaKH")})
    @ManyToMany
    private Collection<Khachhang> khachhangCollection;
    @OneToMany(mappedBy = "maSP")
    private Collection<Chitietdonhang> chitietdonhangCollection;
    @JoinColumns({
        @JoinColumn(name = "MaNCC", referencedColumnName = "MaNCC"),
        @JoinColumn(name = "MaNCC", referencedColumnName = "MaNCC")})
    @ManyToOne
    private Nhacungcap nhacungcap;
    @JoinColumn(name = "MaNhomSP", referencedColumnName = "MaNhomSP")
    @ManyToOne
    private Nhomsanpham maNhomSP;
    @OneToMany(mappedBy = "maSP")
    private Collection<Cauhinh> cauhinhCollection;
    @OneToMany(mappedBy = "maSP")
    private Collection<Uathich> uathichCollection;

    public Sanpham() {
    }

    public Sanpham(Integer maSP) {
        this.maSP = maSP;
    }

    public Integer getMaSP() {
        return maSP;
    }

    public void setMaSP(Integer maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    public String getThuongHieu() {
        return thuongHieu;
    }

    public void setThuongHieu(String thuongHieu) {
        this.thuongHieu = thuongHieu;
    }

    public Collection<Khachhang> getKhachhangCollection() {
        return khachhangCollection;
    }

    public void setKhachhangCollection(Collection<Khachhang> khachhangCollection) {
        this.khachhangCollection = khachhangCollection;
    }

    public Collection<Chitietdonhang> getChitietdonhangCollection() {
        return chitietdonhangCollection;
    }

    public void setChitietdonhangCollection(Collection<Chitietdonhang> chitietdonhangCollection) {
        this.chitietdonhangCollection = chitietdonhangCollection;
    }

    public Nhacungcap getNhacungcap() {
        return nhacungcap;
    }

    public void setNhacungcap(Nhacungcap nhacungcap) {
        this.nhacungcap = nhacungcap;
    }

    public Nhomsanpham getMaNhomSP() {
        return maNhomSP;
    }

    public void setMaNhomSP(Nhomsanpham maNhomSP) {
        this.maNhomSP = maNhomSP;
    }

    public Collection<Cauhinh> getCauhinhCollection() {
        return cauhinhCollection;
    }

    public void setCauhinhCollection(Collection<Cauhinh> cauhinhCollection) {
        this.cauhinhCollection = cauhinhCollection;
    }

    public Collection<Uathich> getUathichCollection() {
        return uathichCollection;
    }

    public void setUathichCollection(Collection<Uathich> uathichCollection) {
        this.uathichCollection = uathichCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maSP != null ? maSP.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sanpham)) {
            return false;
        }
        Sanpham other = (Sanpham) object;
        if ((this.maSP == null && other.maSP != null) || (this.maSP != null && !this.maSP.equals(other.maSP))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Sanpham[ maSP=" + maSP + " ]";
    }
    
}
