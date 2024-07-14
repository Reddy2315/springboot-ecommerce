package com.wipro.ecommerce.exception;

public class InvalidNumberException extends Exception{

	public InvalidNumberException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.getMessage();
	}

	
}
