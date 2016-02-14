package codemons.transporter.service.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import codemons.transporter.model.user.User;
import codemons.transporter.model.user.UserRepository;
import codemons.transporter.model.userrole.UserRolesRepository;

@Service
public class LoginDetailsService implements UserDetailsService{
	private final UserRepository userRepository;
	private final UserRolesRepository userRolesRepository;
	
	@Autowired
    public LoginDetailsService(UserRepository userRepository, UserRolesRepository userRolesRepository) {
        this.userRepository = userRepository;
        this.userRolesRepository=userRolesRepository;
    }
	
        
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user=userRepository.findByUsername(username);
		if(user.equals(null)){
			throw new UsernameNotFoundException("No user present with username: "+username);
		}else{
			List<String> userRoles=userRolesRepository.findRoleByUsername(username);
			return new LoginDetails(user,userRoles);
		}
	}
		
}
