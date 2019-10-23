package com.devglan.config;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.devglan.model.Constants.HEADER_STRING;
import static com.devglan.model.Constants.TOKEN_PREFIX;

public class JwtAuthenticationFilter extends OncePerRequestFilter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	private TokenProvider jwtTokenUtil;

	@Override
	protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
			throws IOException, ServletException {
//		String header = req.getHeader(HEADER_STRING);
//		header = TOKEN_PREFIX;
		String username = null;
//		String authToken = null;

		final HttpServletRequest request = (HttpServletRequest) req;
		final HttpServletResponse response = (HttpServletResponse) res;
		final String authHeader = request.getHeader("authorization");
		
		System.out.println(authHeader);

		if ("OPTIONS".equals(request.getMethod())) {
			res.setStatus(HttpServletResponse.SC_OK); // status 200
			chain.doFilter(req, res);
		} else {
			if (authHeader == null || !authHeader.startsWith("Bearer ")) {
				throw new ServletException("Missing or invalid Authorization header");
			}

			final String token = authHeader.substring(7);

			try {
//				final Claims claims = Jwts.parser().setSigningKey("secretkey").parseClaimsJws(token).getBody();
//				System.out.println(claims);
//				request.setAttribute("claims", claims);

				UserDetails userDetails = userDetailsService.loadUserByUsername("pob");

				if (jwtTokenUtil.validateToken(token, userDetails)) {
					UsernamePasswordAuthenticationToken authentication = jwtTokenUtil.getAuthentication(token,
							SecurityContextHolder.getContext().getAuthentication(), userDetails);
					authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(req));
					logger.info("authenticated user " + username + ", setting security context");
					SecurityContextHolder.getContext().setAuthentication(authentication);
				}
				
			} catch (final SignatureException e) {
				throw new ServletException("Invalid token");
			}
			chain.doFilter(req, res);
		}

		// if (header != null && header.startsWith(TOKEN_PREFIX)) {
		// authToken = header.replace(TOKEN_PREFIX,"");
		// try {
		// username = jwtTokenUtil.getUsernameFromToken(authToken);
		// } catch (IllegalArgumentException e) {
		// logger.error("an error occured during getting username from token", e);
		// } catch (ExpiredJwtException e) {
		// logger.warn("the token is expired and not valid anymore", e);
		// } catch(SignatureException e){
		// logger.error("Authentication Failed. Username or Password not valid.");
		// }
		// } else {
		// logger.warn("couldn't find bearer string, will ignore the header");
		// }
		// if (username != null &&
		// SecurityContextHolder.getContext().getAuthentication() == null) {
		//
		// UserDetails userDetails = userDetailsService.loadUserByUsername(username);
		//
		// if (jwtTokenUtil.validateToken(authToken, userDetails)) {
		// UsernamePasswordAuthenticationToken authentication =
		// jwtTokenUtil.getAuthentication(authToken,
		// SecurityContextHolder.getContext().getAuthentication(), userDetails);
		// //UsernamePasswordAuthenticationToken authentication = new
		// UsernamePasswordAuthenticationToken(userDetails, null, Arrays.asList(new
		// SimpleGrantedAuthority("ROLE_ADMIN")));
		// authentication.setDetails(new
		// WebAuthenticationDetailsSource().buildDetails(req));
		// logger.info("authenticated user " + username + ", setting security context");
		// SecurityContextHolder.getContext().setAuthentication(authentication);
		// }
		// }

		// chain.doFilter(req, res);
	}
}