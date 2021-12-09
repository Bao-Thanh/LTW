package dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import model.Khachhang;

public class KhachhangDAOImpl implements KhachhangDAO {

    @Override
    public void addKH(Khachhang u) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(u);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    @Override
    public boolean checkKH(String username) {
        return false;
    }

    @Override
    public Khachhang login(String username, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT k FROM Khachhang k WHERE k.tenTK = :username "
                + "AND k.matKhau = :password";

        TypedQuery<Khachhang> q = em.createQuery(qString, Khachhang.class);
        q.setParameter("username", username);
        q.setParameter("password", password);

        Khachhang kh = null;
        try {
            kh = q.getSingleResult();
            if (kh == null) {
                kh = null;
            }
        } catch (NoResultException e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return kh;
    }

    @Override
    public void updateKH(int maKH, String tenKH, String tenTK, String matKhau,
            String diaChi, String sdt, String email) {
        Khachhang up_kh = new Khachhang();
        up_kh.setMaKH(maKH);
        up_kh.setTenKH(tenKH);
        up_kh.setTenTK(tenTK);
        up_kh.setMatKhau(matKhau);
        up_kh.setDiaChi(diaChi);
        up_kh.setSdt(sdt);
        up_kh.setEmail(email);

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.merge(up_kh);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    @Override
    public Khachhang getKH(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT k FROM Khachhang k WHERE k.tenKH = :username";

        TypedQuery<Khachhang> q = em.createQuery(qString, Khachhang.class);

        q.setParameter("username", username);

        Khachhang kh = null;
        try {
            kh = q.getSingleResult();
            if (kh == null) {
                kh = null;
            }
        } catch (NoResultException e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return kh;
    }

    @Override
    public List<Khachhang> getList() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT s FROM Khachhang s";

        TypedQuery<Khachhang> q = em.createQuery(qString, Khachhang.class);

        List<Khachhang> kh = q.getResultList();

        return kh;
    }

    @Override
    public List<Khachhang> getList1() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
