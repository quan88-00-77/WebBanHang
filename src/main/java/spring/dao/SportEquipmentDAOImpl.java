package spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.entity.SportEquipment;

@Repository
public class SportEquipmentDAOImpl implements SportEquipmentDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<SportEquipment> getSportEquipments() {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.createQuery("from SportEquipment", SportEquipment.class).getResultList();
    }

    @Override
    public SportEquipment getSportEquipmentById(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(SportEquipment.class, id);
    }

    @Override
    public void saveSportEquipment(SportEquipment sportEquipment) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(sportEquipment);
    }

    @Override
    public void updateSportEquipment(SportEquipment sportEquipment) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.update(sportEquipment);
    }

    @Override
    public void deleteSportEquipment(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        SportEquipment sportEquipment = currentSession.get(SportEquipment.class, id);
        currentSession.delete(sportEquipment);
    }
    
    @Override
    public List<SportEquipment> searchSportEquipment(String keyword) {
        Session session = sessionFactory.getCurrentSession();
        String hql = "FROM SportEquipment se WHERE se.name LIKE :keyword";
        List<SportEquipment> result = session.createQuery(hql).setParameter("keyword", "%" + keyword + "%").getResultList();
        return result;
    }

}
