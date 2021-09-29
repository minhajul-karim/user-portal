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
        try {
            def user = User.findByUsername(params.username)?: new User(
                                                                firstName: params.firstName,
                                                                lastName: params.lastName, 
                                                                username: params.username,
                                                                password: params.password,
                                                                phone: params.phone,
                                                                birthdate: params.birthdate,
                                                                address: params.address).save()
            def role = Role.get(params.role.id)
            if(user) {
                UserRole.create user, role

                UserRole.withSession {
                    it.flush()
                    it.clear()
                }

                flash.message = "You have registered successfully. Please login."
                redirect controller: "login", action: "auth"
            } else {
                flash.message = "Oops! Registration failed"
                render view: "index"
                return
            }
        } catch (ValidationException e) {
            flash.message = "Oops! Registration failed w e"
            redirect action: "index"
            return
        }
    }
}