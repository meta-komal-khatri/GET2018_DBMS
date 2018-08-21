package dbms_session_5;

import java.sql.Blob;

public class ProductImages {
	private int productId;
	private Blob image;
	
	ProductImages(int productId,Blob image){
		this.productId=productId;
		this.image=image;
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
	 * @return the image
	 */
	public Blob getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(Blob image) {
		this.image = image;
	}
	
	
}
