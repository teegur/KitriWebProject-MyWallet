package model;

public class ChartData {
	private int key;
	private String id;
	
	public ChartData() {};
	public ChartData(int key, String id) {
		super();
		this.key = key;
		this.id = id;
	}

	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	
}
