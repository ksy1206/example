package cmd.service;

import java.util.List;
import java.util.Map;

import cmd.vo.AdminVO;

public interface AdminService {
	
	public List<Object> get_travel_list(Map<String, Object> pMap);
	public List<Object> get_all_travel_list(Map<String, Object> pMap);
	public List<Object> get_notice_list(Map<String, Object> pMap);
	public List<Object> get_add_info_list(Map<String, Object> pMap);
	public String save_notice(Map<String, Object> pMap) throws Exception;
	public String delete_notice(Map<String, Object> pMap) throws Exception;
	public String update_notice(Map<String, Object> pMap) throws Exception;
	public String update_add_info(Map<String, Object> pMap) throws Exception;
	
	public String save_travel(Map<String, Object> pMap) throws Exception;
	public String delete_travel(Map<String, Object> pMap) throws Exception;
	public String update_travel(Map<String, Object> pMap) throws Exception;
	
	
	public List<Object> get_food_list(Map<String, Object> pMap);
	public String save_food(Map<String, Object> pMap) throws Exception;
	public String delete_food(Map<String, Object> pMap) throws Exception;
	public List<Object> get_all_food_list(Map<String, Object> pMap);
	
	
	public List<Object> get_party_list(Map<String, Object> pMap);
	public List<Object> get_all_party_list(Map<String, Object> pMap);
	public String save_party(Map<String, Object> pMap) throws Exception;
	public String delete_party(Map<String, Object> pMap) throws Exception;
	public String update_party(Map<String, Object> pMap) throws Exception;
	



}


