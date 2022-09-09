package cc.greenit.sample.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cc.greenit.sample.dao.FnbDAO;

@Service
public class FnbServiceImpl implements FnbService {
	
	FnbDAO fnbDAO;
	
	@Autowired
	public FnbServiceImpl(FnbDAO fnbDAO) {
		this.fnbDAO = fnbDAO;
	}
	

	@Override
	public List<HashMap<String, Object>> sl_table_select(Map<String, Object> params) {
		return fnbDAO.sl_table_select(params);
	}


	@Override
	public List<HashMap<String, Object>> sales_list(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return fnbDAO.sales_list(params);
	}


	@Override
	public List<HashMap<String, Object>> saveOrder(HashMap paramMap) {
		return fnbDAO.saveOrder(paramMap);
	}


	@Override
	public List<HashMap<String, Object>> common_list(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return fnbDAO.common_list(params);
	}

}
