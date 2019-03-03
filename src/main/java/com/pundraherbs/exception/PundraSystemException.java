package com.pundraherbs.exception;

public class PundraSystemException extends RuntimeException {

	//TODO declare as exception handler
	private static final long serialVersionUID = 2089020853977364050L;

	public PundraSystemException() {
		super();
	}

	public PundraSystemException(String message) {
		super(message);
	}
}
