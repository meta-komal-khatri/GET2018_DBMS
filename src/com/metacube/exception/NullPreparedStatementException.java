package com.metacube.exception;

@SuppressWarnings("serial")
public class NullPreparedStatementException extends Exception{
	public NullPreparedStatementException(String message) {
		super(message);
	}
}
