package com.portal_pack

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.SpringSecurityService
import grails.gorm.transactions.Transactional

@Transactional
class ProfileController {

    SpringSecurityService springSecurityService

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
        String view
        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            redirect(controller: "admin")
            return
        } else {
            render view: "index"
        }
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def changePassword() {
        if (request.method == "GET") {
            render view: "change_password"
        } else if (request.method == "POST") {
            if (params.newpassword.length() > 0) {
                String username = springSecurityService.authentication.principal.username
                def user = User.findByUsername(username)
                user.password = params.newpassword
                user.save(flush: true)
                session.invalidate()
                redirect controller: "login", action: "auth"
            }
            flash.message = "Please enter a valid password"
            render view: "change_password"
        }
    }
}
