package com.nix.validator.constraint;

import com.nix.validator.constraintvalidator.UniqueLoginValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Target({FIELD, PARAMETER, ANNOTATION_TYPE})
@Retention(RUNTIME)
@Constraint(validatedBy = UniqueLoginValidator.class)
@Documented
public @interface UniqueLogin {

    String message() default "Login exist.";

    Class[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
