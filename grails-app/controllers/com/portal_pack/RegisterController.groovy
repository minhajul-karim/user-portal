package com.portal_pack

import grails.validation.ValidationException
import grails.gorm.transactions.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.portal_pack.User
import com.portal_pack.Role
import com.portal_pack.UserRole

@Transactional
@Secured('permitAll')
class RegisterController {

    static allowedMethods = [register: "POST"]

    def index() { }

    def create() {
        // Create new user with unique email only
        try {
            def user = User.findByUsername(params.username)
            if (user) {
                flash.message = "This Email address is not available"
                render view: "index"
                return
            } else {
                def newUser = new User(
                        firstName: params.firstName,
                        lastName: params.lastName, 
                        username: params.username,
                        password: params.password,
                        phone: params.phone,
                        birthdate: params.birthdate,
                        address: params.address).save()
                def role = Role.get(params.role)
                UserRole.create newUser, role
                UserRole.withSession {
                    it.flush()
                    it.clear()
                }
                flash.message = "You have registered successfully. Please login."
                redirect controller: "login", action: "auth"
            }
        } catch (ValidationException e) {
            flash.message = "Oops! Registration failed"
            redirect action: "index"
            return
        }
    }

    def checkEmailAvailability() {
        try {
            def user = User.findByUsername(params.username)
            def resp = user ? [availability: false] : [availability: true]
            render resp as grails.converters.JSON
        } catch (ValidationException e) {
            resp = [error: true]
            render resp as grails.converters.JSON
        }
    }
}