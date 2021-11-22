package dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import model.Sanpham;

public class SanphamDAOImpl implements SanphamDAO {

    @Override
    public List<Sanpham> getListSPgia(){
         EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT s FROM Sanpham s WHERE s.gia >= 20000";

        TypedQuery<Sanpham> q = em.createQuery(qString, Sanpham.class);

        List<Sanpham> sp = null;
        try {
            sp = q.getResultList();

            if (sp == null) {
                sp = null;
            }
        } catch (NoResultException e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return sp;
    }
      

    @Override
    public List<Sanpham> getList() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT s FROM Sanpham s";

        TypedQuery<Sanpham> q = em.createQuery(qString, Sanpham.class);

        List<Sanpham> sp = null;
        try {
            sp = q.getResultList();

            if (sp == null) {
                sp = null;
            }
        } catch (NoResultException e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return sp;
    }

    public static void main(String[] args) {
        SanphamDAOImpl sp = new SanphamDAOImpl();
        List<Sanpham> ls = new ArrayList<Sanpham>();
        ls = sp.getList();
        System.out.println(ls);
    }
}
