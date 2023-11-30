package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.dao.SportEquipmentDAO;
import spring.entity.SportEquipment;

@Service
public class SportEquipmentServiceImpl implements SportEquipmentService {

    @Autowired
    private SportEquipmentDAO sportEquipmentDAO;

    @Override
    @Transactional
    public List<SportEquipment> getSportEquipments() {
        return sportEquipmentDAO.getSportEquipments();
    }

    @Override
    @Transactional
    public SportEquipment getSportEquipmentById(int id) {
        return sportEquipmentDAO.getSportEquipmentById(id);
    }

    @Override
    @Transactional
    public void saveSportEquipment(SportEquipment sportEquipment) {
        sportEquipmentDAO.saveSportEquipment(sportEquipment);
    }

    @Override
    @Transactional
    public void updateSportEquipment(SportEquipment sportEquipment) {
        sportEquipmentDAO.updateSportEquipment(sportEquipment);
    }

    @Override
    @Transactional
    public void deleteSportEquipment(int id) {
        sportEquipmentDAO.deleteSportEquipment(id);
    }

	@Override
	@Transactional
	public List<SportEquipment> searchSportEquipment(String keyword) {
		// TODO Auto-generated method stub
		return sportEquipmentDAO.searchSportEquipment(keyword);
	}
}
