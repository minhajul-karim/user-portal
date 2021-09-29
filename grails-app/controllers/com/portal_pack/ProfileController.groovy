package com.portal_pack

import grails.plugin.springsecurity.annotation.Secured

class ProfileController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() { }
}
