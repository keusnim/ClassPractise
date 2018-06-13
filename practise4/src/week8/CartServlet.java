package week8;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cart;
import model.Good;

/**
 * Servlet implementation class CartServlet
 */

public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String[] ball;
		String num1,num2,num3;
		Cart cart=new Cart();
		int basketballprice=56;
		int footballprice=30;
		int volleyballprice=43;
		int basketballnum;
		int footballnum;
		int volleyballnum;
		
		try{
			ball=request.getParameterValues("ball");
			num1=request.getParameter("basketballnum");
			num2=request.getParameter("footballnum");
			num3=request.getParameter("volleyballnum");
			
				
				basketballnum=Integer.parseInt(num1);
				footballnum=Integer.parseInt(num2);
				volleyballnum=Integer.parseInt(num3);
			
			
				
			for(String a:ball) {
				if(a.equals("ÀºÇò")) {
					Good basketball=new Good("ÀºÇò",basketballprice,basketballnum);
					cart.addGoods(basketball, basketballnum);
				} 
				if(a.equals("×ãÇò")){
					Good football=new Good("×ãÇò",footballprice,footballnum);
					cart.addGoods(football, footballnum);
				}
				if(a.equals("ÅÅÇò")) {
					Good volleyball=new Good("ÅÅÇò",volleyballprice,volleyballnum);
					cart.addGoods(volleyball, volleyballnum);
				}
			}
			
		
			
			request.getSession().setAttribute("cart", cart);
			response.sendRedirect("cart.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
