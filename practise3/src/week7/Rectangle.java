package week7;

public class Rectangle {
	int length;
	int width;
	int area;
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	
	public int getArea() {
		return area=length*width;
	}
}
