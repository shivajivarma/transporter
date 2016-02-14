package codemons.transporter.model.user;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserRepository extends CrudRepository<User, String> {
    public User findByUsername(String username);
    
}