package domain;
import java.io.Serializable;
import java.util.List;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7524791596080862405L;
	@NotNull
	@Size(min=1,max=10)
	private String name;
	private String description;
	private float price;
	private List<MultipartFile> images;
	
	
	public void setName(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}
	public void setDescription(String description){
		this.description = description;
	}
	public String getDescription(){
		return description;
	}
	public void setPrice(float price){
		this.price = price;
	}
	public float getPrice(){
		return price;
	}
	public void setImages(List<MultipartFile> images){
		this.images = images;
	}
	public List<MultipartFile> getImages(){
		return images;
	}
}