package cc.greenit.sample.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cc.greenit.sample.common.dao.AbstractDAO;

@Repository
public class SampleDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<HashMap<String, Object>> selectTest(Map<String, Object> params) {
		
		List<HashMap<String, Object>> list = selectList("sample.selectTest", params);

		return list;
	}
	
}
