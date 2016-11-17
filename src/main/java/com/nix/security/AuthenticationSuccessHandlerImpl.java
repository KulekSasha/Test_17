package com.nix.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler {

    private static final Logger log = LoggerFactory.getLogger(AuthenticationSuccessHandlerImpl.class);

    private static final GrantedAuthority ADMIN = new SimpleGrantedAuthority("ROLE_ADMIN");
    private static final GrantedAuthority USER = new SimpleGrantedAuthority("ROLE_USER");

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication auth) throws IOException, ServletException {

        if (auth.getAuthorities().contains(ADMIN)) {
            response.sendRedirect(request.getContextPath() + "/admin/users");
        } else if (auth.getAuthorities().contains(USER)) {
            response.sendRedirect(request.getContextPath() + "/user/user");
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}
