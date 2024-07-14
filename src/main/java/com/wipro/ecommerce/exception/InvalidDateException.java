package com.wipro.ecommerce.exception;

public class InvalidDateException extends Exception{
	
	public InvalidDateException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.getMessage();
	}
}
