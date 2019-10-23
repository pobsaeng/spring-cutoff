//package com.multibank.model.factory;
//
//import com.multibank.domain.entity.User;
//import com.multibank.model.security.SecurityUser;
//
//import org.springframework.security.core.authority.AuthorityUtils;
//
//public class UserFactory {
//
//  public static SecurityUser create(User user) {
//    return new SecurityUser(
//      user.getId(),
//      user.getUsername(),
//      user.getPassword(),
//      user.getEmail(),
//      user.getLastPasswordReset(),
//      AuthorityUtils.commaSeparatedStringToAuthorityList(user.getAuthorities())
//    );
//  }
//
//}
