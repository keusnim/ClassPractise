package cal;

public class cal {
	private double n;
	public cal() {
		
	}
	
	public double countNum(double n) {
		this.n=n;
		double sum=0,p;
		double i,j=1;
		for(i=1;i<=n;i++) {
			p=1/i;
			p*=j;
			j*=-1;
			i+=1;
			sum+=p;
		}
		return sum;
	}
}
