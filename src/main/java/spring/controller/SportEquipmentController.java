package spring.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import spring.entity.SportEquipment;
import spring.service.SportEquipmentService;

@Controller
@RequestMapping("/sportEquipment")
public class SportEquipmentController {

    @Autowired
    private SportEquipmentService sportEquipmentService;

    @GetMapping("/list")
    public String listSportEquipments(Model model) {
        List<SportEquipment> sportEquipments = sportEquipmentService.getSportEquipments();
        model.addAttribute("sportEquipments", sportEquipments);
        return "Admin";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {
        SportEquipment sportEquipment = new SportEquipment();
        model.addAttribute("sportEquipment", sportEquipment);
        return "formAddProduct";
    }

    @PostMapping("/saveSportEquipment")
    public String saveSportEquipment(Model theModel,@RequestParam("id") int id,@RequestParam("name") String name, @RequestParam("description") String description,@RequestParam("price") double price,@RequestParam("quantity") int quantity,@RequestParam("sport_type") String sport_type,@RequestParam("brand") String brand,@RequestParam("size") String size, @RequestParam("color") String color ,@RequestParam("image") MultipartFile imageFile) {
    	try {
    		SportEquipment sportEquipment = new SportEquipment();
    		sportEquipment.setId(id);
    		sportEquipment.setName(name);
    		sportEquipment.setDescription(description);
    		sportEquipment.setPrice(price);
    		sportEquipment.setQuantity(quantity);
    		sportEquipment.setSportType(sport_type);
    		sportEquipment.setBrand(brand);
    		sportEquipment.setSize(size);
    		sportEquipment.setColor(color);
    		
    		SportEquipment sportEquipment2 = sportEquipmentService.getSportEquipmentById(id);
    		
	        if (imageFile != null && !imageFile.isEmpty()) {
	            String imageFileName = imageFile.getOriginalFilename();
	            
	        	sportEquipment.setImage(imageFileName);
	        	
	        	
	            String uploadDir = "C:/Users/ADMIN/eclipse-workspace/WebOnlineCK/src/main/webapp/resources/images/";
	            File fileUploadPath = new File(uploadDir);

	            if (!fileUploadPath.exists()) {
	            	fileUploadPath.mkdirs();
	            }
	            try (
	                    InputStream imageInputStream = imageFile.getInputStream();
	                    FileOutputStream imageOutputStream = new FileOutputStream(uploadDir + imageFileName)) {
	                   int readBytes;
	                   byte[] buffer = new byte[8192];
	                   
	                   while ((readBytes = imageInputStream.read(buffer, 0, 8192)) != -1) {
	                       imageOutputStream.write(buffer, 0, readBytes);
	                   }
	               }
	           }else {
				sportEquipment.setImage(sportEquipment2.getImage());
			}
	        sportEquipmentService.saveSportEquipment(sportEquipment);
	       } catch (IOException e) {
	           e.printStackTrace();
	       }
    	
        return "redirect:/sportEquipment/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("sportEquipmentId") int id, Model model) {
        SportEquipment sportEquipment = sportEquipmentService.getSportEquipmentById(id);
        model.addAttribute("sportEquipment", sportEquipment);
        return "formAddProduct";
    }

    @GetMapping("/delete")
    public String deleteSportEquipment(@RequestParam("sportEquipmentId") int id) {
        sportEquipmentService.deleteSportEquipment(id);
        return "redirect:/sportEquipment/list";
    }

    @GetMapping("/showDetail")
    public String showDetail(@RequestParam("sportEquipmentId") int id, Model model) {
        SportEquipment sportEquipment = sportEquipmentService.getSportEquipmentById(id);
        model.addAttribute("sportEquipment", sportEquipment);
        return "detail";
    }
    
    @PostMapping("/search")
    public String searchSportEquipment(@RequestParam("keyword") String keyword, Model model, HttpSession session) {
        List<SportEquipment> searchResult = sportEquipmentService.searchSportEquipment(keyword);
        model.addAttribute("searchResult", searchResult);
        session.getAttribute("user");
        return "search-result";
    }
    
    @GetMapping("/addCart")
    public String addtoCart() {
    	return "cart";
    }
}
