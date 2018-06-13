package model;

public class Good {
	private String goodname;
	private int goodprice;
	private int buynum;
	
	public Good(String goodname,int goodprice,int buynum) {
		this.goodname=goodname;
		this.goodprice=goodprice;
		this.buynum=buynum;
	}
	
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public int getGoodprice() {
		return goodprice;
	}
	public void setGoodprice(int goodprice) {
		this.goodprice = goodprice;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	
	
}
