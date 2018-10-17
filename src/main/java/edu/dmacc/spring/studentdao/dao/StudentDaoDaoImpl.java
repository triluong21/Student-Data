/*package edu.dmacc.spring.studentdata;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.daodao.DataAccessException;
import org.springframework.jdbc.core.namedParameterJdbcTemplate;
import edu.dmacc.spring.studentdao.dao.StudentDaoDao;
import edu.dmacc.spring.studentdata.Student;

@Repository
public class StudentDaoDaoImpl<NamedParameterJdbcTemplate> implements StudentDaoDao{
	
	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate){
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public List<Student> listAllStudent() {

		String sql = "SELECT id, enrollmentid, fullname, gender, emailaddres, city, country, iastateresident from students";
		List<Student> list = namedParameterJdbcTemplate.query(sql, paramSource, rowMapper);
		return null;
	}
	
	private SqlParameterSource getSqlParameterByModel(Student student) {
		MapSqlParamteterSource paramSource = new MapSqlParameterSource;
		return paramSource;
	}

	private static final class StudentMapper implements RowMapper<Student> {
		public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student student = new Student();
		return student;
		}
	}
	
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		
	}

	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		
	}

	public void deleteStudent(int id) {
		// TODO Auto-generated method stub
		
	}

	public Student findStudentById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}

*/