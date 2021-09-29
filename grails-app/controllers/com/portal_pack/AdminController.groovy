package com.portal_pack

import grails.plugin.springsecurity.annotation.Secured

class AdminController {

    @Secured(['ROLE_ADMIN'])
    def index() {
        def users = User.list()
        [users: users]
    }
}
