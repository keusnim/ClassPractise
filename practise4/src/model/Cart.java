package model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class Cart {
	private HashMap<Good,Integer> cart;
	private int totalprice;
	
	public Cart() {
		cart=new HashMap<Good,Integer>();
		totalprice=0;
	}
	
	public HashMap<Good, Integer> getCart() {
		return cart;
	}
	public void setCart(HashMap<Good, Integer> cart) {
		this.cart = cart;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	
	//添加购买的商品
	public boolean addGoods(Good good,int buynum) {
		this.cart.put(good, buynum);
		calTotalprice();
		return true;
	}
	
	//删除商品
	public boolean removeGoods(Good good) {
		this.cart.remove(good);
		calTotalprice();
		return true;
	}
	
	//计算总价
	public int calTotalprice() {
		int sum=0;
		Set<Good> keys=cart.keySet();
		Iterator<Good> it=keys.iterator();
		while(it.hasNext()) {
			Good i=it.next();
			sum+=i.getGoodprice()*cart.get(i);
		}
		this.setTotalprice(sum);
		return this.totalprice;
	}
	
	
}
