package cc.greenit.sample.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cc.greenit.sample.common.dao.AbstractDAO;

@Repository
public class FnbDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<HashMap<String, Object>> sl_table_select(Map<String, Object> params) {
		
		List<HashMap<String, Object>> list = selectList("fnb.sl_table_select", params);
		
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<HashMap<String, Object>> sales_list(Map<String, Object> params) {
		
		List<HashMap<String, Object>> list = selectList("fnb.sales_list", params);
		
		return list;
	}

	public List<HashMap<String, Object>> saveOrder(HashMap paramMap) {
		
		insert("fnb.saveOrder_insert", paramMap);
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<HashMap<String, Object>> common_list(Map<String, Object> params) {
		
		List<HashMap<String, Object>> list = selectList("fnb.common_list", params);
		return list;
	}
	

}
