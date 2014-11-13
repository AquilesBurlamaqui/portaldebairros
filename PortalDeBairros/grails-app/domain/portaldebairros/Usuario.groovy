package portaldebairros

import org.springframework.security.authentication.AuthenticationServiceException;  
import org.springframework.security.core.Authentication;  
import org.springframework.security.core.context.SecurityContext;  
import org.springframework.security.core.context.SecurityContextHolder;  
import org.springframework.security.core.userdetails.User;  

class Usuario {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Papel> getAuthorities() {
		UsuarioPapel.findAllByUsuario(this).collect { it.papel }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
        
    
    //retorna usuario logado  
    String toString()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username
        return name;
    }
}
