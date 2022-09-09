package cc.greenit.sample.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface FnbService {

	public List<HashMap<String, Object>> sl_table_select(Map<String, Object> params);

	public List<HashMap<String, Object>> sales_list(Map<String, Object> params);

	List<HashMap<String, Object>> saveOrder(HashMap paramMap);

	public List<HashMap<String, Object>> common_list(Map<String, Object> params);

}
