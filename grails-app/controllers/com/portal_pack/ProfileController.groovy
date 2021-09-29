package com.portal_pack

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

class ProfileController {

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
}
