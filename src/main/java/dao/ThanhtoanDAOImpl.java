package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import model.Thanhtoan;
import model.Vanchuyen;

public class ThanhtoanDAOImpl implements ThanhtoanDAO {

    @Override
    public List<Thanhtoan> getList() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT t FROM Thanhtoan t";

        TypedQuery<Thanhtoan> q = em.createQuery(qString, Thanhtoan.class);

        List<Thanhtoan> th = null;

        try {
            th = q.getResultList();

            if (th == null) {
                th = null;
            }
        } catch (NoResultException e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return th;
    }

    @Override
    public Thanhtoan getThanhbyID(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT s FROM Thanhtoan s where s.maTT = :id";
        TypedQuery<Thanhtoan> q = em.createQuery(qString, Thanhtoan.class);
        q.setParameter("id", id);
        Thanhtoan sp = q.getSingleResult();
        return sp;
    }

}
