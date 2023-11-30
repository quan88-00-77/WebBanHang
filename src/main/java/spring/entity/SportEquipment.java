package spring.entity;

import javax.persistence.*;

@Entity
@Table(name = "sports_equipment")
public class SportEquipment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private double price;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "sport_type")
    private String sportType;

    @Column(name = "brand")
    private String brand;

    @Column(name = "size")
    private String size;

    @Column(name = "color")
    private String color;
    
    @Column(name = "image")
    private String image;


    public SportEquipment() {
    }

    public SportEquipment(String name, String description, double price, int quantity, String sportType, String brand, String size, String color) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.sportType = sportType;
        this.brand = brand;
        this.size = size;
        this.color = color;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getSportType() {
		return sportType;
	}

	public void setSportType(String sportType) {
		this.sportType = sportType;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

    
}
