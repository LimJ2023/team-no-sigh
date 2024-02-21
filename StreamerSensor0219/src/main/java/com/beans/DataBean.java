package com.beans;

import javax.validation.constraints.NotEmpty;

public class DataBean {

	 //공백을 인정함
	   @NotEmpty
	   private String data1;
	   
	   
	   public DataBean() {
	      this.data1 = "abcd";
	      
	   }

	   public String getData1() {
	      return data1;
	   }

	   public void setData1(String data1) {
	      this.data1 = data1;
	   }
}
