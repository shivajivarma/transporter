package codemons.travelagency.model.location;

import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import java.util.List;

class LocationDAO extends JdbcDaoSupport{

    public Location findById(int id) throws EmptyResultDataAccessException{
        String sql = "select * from location where id = ?";

        Location location = (Location) getJdbcTemplate().queryForObject(sql,
                new Object[] { id },
                new BeanPropertyRowMapper<Location>(Location.class));

        return location;
    }

    public List<Location> findAll(){
        String sql = "select * from location";

        List<Location> customers  = getJdbcTemplate().query(sql,
                new BeanPropertyRowMapper(Location.class));

        return customers;
    }

}
