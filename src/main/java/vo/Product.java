package vo;

import java.util.Date;

public class Product {

	private int no;
	private String name;
	private String maker;
	private int price;
	private double discountRate;
	private int stock;
	private Date createDate;
	
	public Product() {}
	
	public Product(int no, String name, String maker, int price, double discountRate, int stock, Date createDate) {
		super();
		this.no = no;
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.discountRate = discountRate;
		this.stock = stock;
		this.createDate = createDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	
}