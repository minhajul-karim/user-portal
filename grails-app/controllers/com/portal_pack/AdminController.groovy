package com.portal_pack

import grails.plugin.springsecurity.annotation.Secured

class AdminController {

    @Secured(['ROLE_ADMIN'])
    def index() {
        def users = User.list()
        render(view: "index", model: [users: users])
    }

    @Secured(['ROLE_ADMIN'])
    def find() {
        def result
        if (params.showAllUsers) {
            result = User.list()
        } else {
            result = User.findAllByFirstNameIlikeOrLastNameIlikeOrUsernameIlikeOrPhoneIlikes(
                "%${params.searchTerm}%", 
                "%${params.searchTerm}%", 
                "%${params.searchTerm}%",
                "%${params.searchTerm}%")
        }
        render(template: "tableTemplate", model: [users: result])
    }
}
