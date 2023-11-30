package spring.dao;

import java.util.List;

import spring.entity.SportEquipment;

public interface SportEquipmentDAO {

    List<SportEquipment> getSportEquipments();

    SportEquipment getSportEquipmentById(int id);

    void saveSportEquipment(SportEquipment sportEquipment);

    void updateSportEquipment(SportEquipment sportEquipment);

    void deleteSportEquipment(int id);
    
    List<SportEquipment> searchSportEquipment(String keyword);
}
