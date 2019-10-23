package com.app.security;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.app.dao.UsersDao;
import com.app.model.Users;

public class UserDetailsServiceImpl implements UserDetailsService {
	private UsersDao usersDao;
	public UsersDao getUsersDao() {return usersDao;}
	public void setUsersDao(UsersDao usersDao) {this.usersDao = usersDao;}

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("--loadUserByUsername--");
		if(username == null || username.equals("")){
			System.out.println("User is emptry or null!!");
			return null;
		}

		String password = null;
		Set<GrantedAuthority> authorities = null;
		
		try {
			Users users = null;
			users = usersDao.findUserByLogin(username);
			if(users == null){
				System.out.println("query password by username is null!!");
				return null;
			}
			password = users.getPassword();
			
			if (null == password) {
//				throw new UsernameNotFoundException("User " + username + " not exists");
				System.out.println("User " + username + " not exists");
				return null;
			}
			// get user roles and build user authorities
			List<String> roles = usersDao.findUserRoles(username);
			authorities = new HashSet<GrantedAuthority>();
			
			for (String role : roles) {
				authorities.add(new GrantedAuthorityImpl(role));
			}
		} catch (Exception e) {e.printStackTrace();}
		// instanciate Spring Security class User
		return new UserDetailsImpl(username, password, authorities);
	}
}
