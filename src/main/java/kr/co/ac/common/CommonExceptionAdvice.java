package kr.co.ac.common;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class CommonExceptionAdvice {
	final String common = "common/";
	
	/*
	 * // 400에러 페이지
	 * 
	 * @ExceptionHandler(RuntimeException.class) public String handle400() { return
	 * common + "error400"; }
	 * 
	 * // 404에러 페이지
	 * 
	 * @ExceptionHandler(NoHandlerFoundException.class)
	 * 
	 * @ResponseStatus(HttpStatus.NOT_FOUND) public String
	 * handle404(NoHandlerFoundException nfe) { return common + "error404"; }
	 */
}
