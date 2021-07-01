package board.model.vo;

import java.sql.Date;

public class Orders {
	private String orderId;
	private String ordererName;
	private String ordererPhone;
	private String ordererEmail;
	private String ordererAddress;
	private String ordererRequest;
	private String orderProductName;
	private int productId;
	private int orderPrice;
	private Date orderDate;
	private String impUid;
	
	public Orders() {}

	

	public Orders(String orderId, String ordererName, String ordererPhone, String ordererEmail, String ordererAddress,
			String ordererRequest, String orderProductName, int productId, int orderPrice, Date orderDate,
			String impUid) {
		super();
		this.orderId = orderId;
		this.ordererName = ordererName;
		this.ordererPhone = ordererPhone;
		this.ordererEmail = ordererEmail;
		this.ordererAddress = ordererAddress;
		this.ordererRequest = ordererRequest;
		this.orderProductName = orderProductName;
		this.productId = productId;
		this.orderPrice = orderPrice;
		this.orderDate = orderDate;
		this.impUid = impUid;
	}



	/**
	 * @return the orderId
	 */
	public String getOrderId() {
		return orderId;
	}



	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}



	/**
	 * @return the ordererName
	 */
	public String getOrdererName() {
		return ordererName;
	}



	/**
	 * @param ordererName the ordererName to set
	 */
	public void setOrdererName(String ordererName) {
		this.ordererName = ordererName;
	}



	/**
	 * @return the ordererPhone
	 */
	public String getOrdererPhone() {
		return ordererPhone;
	}



	/**
	 * @param ordererPhone the ordererPhone to set
	 */
	public void setOrdererPhone(String ordererPhone) {
		this.ordererPhone = ordererPhone;
	}



	/**
	 * @return the ordererEmail
	 */
	public String getOrdererEmail() {
		return ordererEmail;
	}



	/**
	 * @param ordererEmail the ordererEmail to set
	 */
	public void setOrdererEmail(String ordererEmail) {
		this.ordererEmail = ordererEmail;
	}



	/**
	 * @return the ordererAddress
	 */
	public String getOrdererAddress() {
		return ordererAddress;
	}



	/**
	 * @param ordererAddress the ordererAddress to set
	 */
	public void setOrdererAddress(String ordererAddress) {
		this.ordererAddress = ordererAddress;
	}



	/**
	 * @return the ordererRequest
	 */
	public String getOrdererRequest() {
		return ordererRequest;
	}



	/**
	 * @param ordererRequest the ordererRequest to set
	 */
	public void setOrdererRequest(String ordererRequest) {
		this.ordererRequest = ordererRequest;
	}



	/**
	 * @return the orderProductName
	 */
	public String getOrderProductName() {
		return orderProductName;
	}



	/**
	 * @param orderProductName the orderProductName to set
	 */
	public void setOrderProductName(String orderProductName) {
		this.orderProductName = orderProductName;
	}



	/**
	 * @return the productId
	 */
	public int getProductId() {
		return productId;
	}



	/**
	 * @param productId the productId to set
	 */
	public void setProductId(int productId) {
		this.productId = productId;
	}



	/**
	 * @return the orderPrice
	 */
	public int getOrderPrice() {
		return orderPrice;
	}



	/**
	 * @param orderPrice the orderPrice to set
	 */
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}



	/**
	 * @return the orderDate
	 */
	public Date getOrderDate() {
		return orderDate;
	}



	/**
	 * @param orderDate the orderDate to set
	 */
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}



	/**
	 * @return the impUid
	 */
	public String getImpUid() {
		return impUid;
	}



	/**
	 * @param impUid the impUid to set
	 */
	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}



	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", ordererName=" + ordererName + ", ordererPhone=" + ordererPhone
				+ ", ordererEmail=" + ordererEmail + ", ordererAddress=" + ordererAddress + ", ordererRequest="
				+ ordererRequest + ", orderProductName=" + orderProductName + ", productId=" + productId
				+ ", orderPrice=" + orderPrice + ", orderDate=" + orderDate + ", impUid=" + impUid + "]";
	}



	
}
