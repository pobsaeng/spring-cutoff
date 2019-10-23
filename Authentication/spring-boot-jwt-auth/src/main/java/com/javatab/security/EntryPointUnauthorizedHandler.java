package com.javatab.security;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Component
public class EntryPointUnauthorizedHandler implements AuthenticationEntryPoint {

	@Override
	public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
			AuthenticationException e) throws IOException, ServletException {
		// httpServletResponse.sendError(HttpServletResponse.SC_UNAUTHORIZED, "AccessDenied");
		PrintWriter writer = httpServletResponse.getWriter();
		ObjectMapper mapper = new ObjectMapper();

		APIException apiExp = new APIException();
		apiExp.setError(e.getLocalizedMessage());
		apiExp.setMessage(e.getMessage());
		apiExp.setPath(httpServletRequest.getServletPath());
		apiExp.setStatus("" + HttpServletResponse.SC_UNAUTHORIZED);
		apiExp.setTimestamp(new Timestamp(System.currentTimeMillis()));

		Object json = mapper.convertValue(apiExp, APIException.class);
		String indented = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(json);
		writer.println(indented);
//		httpServletResponse.sendError(HttpServletResponse.SC_UNAUTHORIZED, apiExp.toString());
	}
}
