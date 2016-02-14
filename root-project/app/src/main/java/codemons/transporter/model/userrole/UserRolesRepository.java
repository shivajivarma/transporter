package codemons.transporter.model.userrole;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserRolesRepository extends CrudRepository<UserRole, String> {
	
	@Query("select a.role from UserRole a, User b where b.username=?1 and a.username=b.username")
    public List<String> findRoleByUsername(String username);
	
}