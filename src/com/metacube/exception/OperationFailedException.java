package com.metacube.exception;

@SuppressWarnings("serial")
public class OperationFailedException extends Exception {
	String message;
	public OperationFailedException(String message) {
		this.message=message;
	}
	public String getMessage() {
		return message;
	}
}
