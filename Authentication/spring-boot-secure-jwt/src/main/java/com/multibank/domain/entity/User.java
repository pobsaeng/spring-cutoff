package com.multibank.domain.entity;
//

//import javax.persistence.*;
//import java.util.Date;
//
//@Entity
//@Table(name = "users")
//public class User {
//
//	private static final long serialVersionUID = 2353528370345499815L;
//	private Long id;
//	private String username;
//	private String password;
//	private String email;
//	private Date lastPasswordReset;
//	private String authorities;
//
//	public User() {
//		super();
//	}
//
//	public User(String username, String password, String email, Date lastPasswordReset, String authorities) {
//		this.setUsername(username);
//		this.setPassword(password);
//		this.setEmail(email);
//		this.setLastPasswordReset(lastPasswordReset);
//		this.setAuthorities(authorities);
//	}
//
//	@Id
//	@Column(name = "id")
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	public Long getId() {
//		return this.id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	@Column(name = "username")
//	public String getUsername() {
//		return this.username;
//	}
//
//	public void setUsername(String username) {
//		this.username = username;
//	}
//
//	@Column(name = "password")
//	public String getPassword() {
//		return this.password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//	@Column(name = "email")
//	public String getEmail() {
//		return this.email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//	@Column(name = "last_password_reset")
//	public Date getLastPasswordReset() {
//		return this.lastPasswordReset;
//	}
//
//	public void setLastPasswordReset(Date lastPasswordReset) {
//		this.lastPasswordReset = lastPasswordReset;
//	}
//
//	@Column(name = "authorities")
//	public String getAuthorities() {
//		return this.authorities;
//	}
//
//	public void setAuthorities(String authorities) {
//		this.authorities = authorities;
//	}
//
//	@Override
//	public String toString() {
//		return "User [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
//				+ ", lastPasswordReset=" + lastPasswordReset + ", authorities=" + authorities + "]";
//	}
//
//}

import org.hibernate.annotations.NaturalId;
import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users", uniqueConstraints = { @UniqueConstraint(columnNames = { "username" }),
		@UniqueConstraint(columnNames = { "email" }) })
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Size(max = 40)
	private String name;

	@Size(max = 15)
	private String username;

	@NaturalId
	@Size(max = 40)
	private String email;

	@Size(max = 100)
	private String password;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles = new HashSet<>();

	public User() {

	}

	public User(String name, String username, String email, String password) {
		this.name = name;
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", username=" + username + ", email=" + email + ", password="
				+ password + ", roles=" + roles + "]";
	}
}