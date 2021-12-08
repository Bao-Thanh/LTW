package dao;

import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import model.Donhang;
import model.Khachhang;
import model.Thanhtoan;
import model.Vanchuyen;

public class DonhangDAOImpl implements DonhangDAO {

    @Override
    public List<Donhang> getList() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT s FROM Donhang s";

        TypedQuery<Donhang> q = em.createQuery(qString, Donhang.class);

        List<Donhang> dh = q.getResultList();

        return dh;
    }

    @Override
    public void insertDH(Donhang u) {

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
}
