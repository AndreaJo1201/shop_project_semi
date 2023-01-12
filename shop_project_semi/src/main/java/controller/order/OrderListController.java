package controller.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.order.OrderService;
import vo.Customer;

import java.util.*;

/**
 * Servlet implementation class OrderListController
 */
@WebServlet("/OrderListController")
public class OrderListController extends HttpServlet {
	private OrderService orderService;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginCustomer") == null) {
			response.sendRedirect(request.getContextPath()+"/SignInController");
			return;
		}
		
		Customer loginCustomer = (Customer)session.getAttribute("loginCustomer");
		this.orderService = new OrderService();
		ArrayList<HashMap<String,Object>> orderList = orderService.getOrderList(loginCustomer.getCustomerId());
		ArrayList<HashMap<String,Object>> testList = orderService.getOrder(loginCustomer.getCustomerId());
		//orderCode, customerId, orderName, orderPrice, orderState, createdate
		// goodsCode, goodsName, fileName, quantity
		
		
		request.setAttribute("orderList", orderList);
		request.setAttribute("testList", testList);
		
		request.getRequestDispatcher("/WEB-INF/view/order/orderList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
