package model;

public class Household {
	
	private String id;
	private String date;
	private String category;
	private String content;
	private int price;
	private int type;
	
	
	
	public Household(String id, String date, String category, String content, int price, int type) {
		super();
		this.id = id;
		this.date = date;
		this.category = category;
		this.content = content;
		this.price = price;
		this.type = type;
	}
	
	

	@Override
	public String toString() {
		return "Household [id=" + id + ", date=" + date + ", category=" + category + ", content=" + content + ", price="
				+ price + ", type=" + type + "]";
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	
	

}
