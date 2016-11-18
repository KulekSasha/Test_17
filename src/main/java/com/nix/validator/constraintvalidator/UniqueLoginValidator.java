package com.nix.validator.constraintvalidator;

import com.nix.service.UserService;
import com.nix.validator.constraint.UniqueLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class UniqueLoginValidator implements ConstraintValidator<UniqueLogin, String> {

    private String login;

    @Autowired
    private UserService userService;

    @Override
    public void initialize(UniqueLogin annotation) {

    }

    @Override
    public boolean isValid(String login, ConstraintValidatorContext context) {

        if (login == null) {
            return false;
        }

        return false;
    }


}
