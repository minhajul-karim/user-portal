package com.portal_pack

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String firstName
    String lastName
    String username
    String password
    String phone
    Date birthdate
    String address
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        firstName size: 2..20, blank: false, 
        lastName size: 2..20, blank: false, 
        username blank: false, unique: true
        password blank: false, password: true
        phone size: 5..30, blank: false
        birthdate blank: false
        address size: 5..100, blank: false
    }

    static mapping = {
	    password column: '`password`'
    }
}
