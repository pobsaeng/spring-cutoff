//package com.multibank.service.impl;
//
//import com.multibank.domain.entity.User;
//import com.multibank.repository.UserRepository;
//import com.multibank.security.UserPrincipal;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserDetailsServiceImpl implements UserDetailsService {
//
//  @Autowired
//  private UserRepository userRepository;
//
//  @Override
//  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//    User user = this.userRepository.findByUsername(username);
//
//    if (user == null) {
//      throw new UsernameNotFoundException(String.format("No user found with username '%s'.", username));
//    } else {
////      return UserFactory.create(user);
//    	return UserPrincipal.create(user);
//    }
//  }
//
//}
