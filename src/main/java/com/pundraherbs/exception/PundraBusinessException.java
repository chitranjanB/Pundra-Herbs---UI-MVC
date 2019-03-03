package com.pundraherbs.exception;

public class PundraBusinessException extends RuntimeException {

	//TODO declare as exception handler
	private static final long serialVersionUID = 2089020853977364050L;

	public PundraBusinessException() {
		super();
	}

	public PundraBusinessException(String message) {
		super(message);
	}
}
