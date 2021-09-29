package com.portal_pack

import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.GrantedAuthority

class CustomUserDetails extends GrailsUser {

   final String firstName
   final String lastName
   final String phone
   final Date birthdate
   final String address

   CustomUserDetails(String username, String password, boolean enabled,
                 boolean accountNonExpired, boolean credentialsNonExpired,
                 boolean accountNonLocked,
                 Collection<GrantedAuthority> authorities,
                 long id, String firstName, String lastName, 
                 String phone, Date birthdate, String address) {
      super(username, password, enabled, accountNonExpired,
            credentialsNonExpired, accountNonLocked, authorities, id)

      this.firstName = firstName
      this.lastName = lastName
      this.phone = phone
      this.birthdate = birthdate
      this.address = address
   }
}