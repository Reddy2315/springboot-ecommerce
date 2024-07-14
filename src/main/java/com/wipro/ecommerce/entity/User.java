package com.wipro.ecommerce.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
@Entity
@Table(name = "users", uniqueConstraints = {@UniqueConstraint(columnNames = "email")})
@Data
@NoArgsConstructor
@EqualsAndHashCode
public class User {
	@Id // will create PK
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer userId;
    private String userName;
    private String email;
    private String password;
    private String mobileNumber;
    private String address;

}
