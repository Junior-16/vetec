package br.edu.ifc.concordia.inf.veterinaria.permision;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Permition {
	UserRoles value() default UserRoles.ADMIN;
}
