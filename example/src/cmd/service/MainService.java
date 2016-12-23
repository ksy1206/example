package cmd.service;

import java.util.List;
import java.util.Map;

public interface MainService {
	
	public List<Object> get_notice_list();

	public Object get_notice_no(Map<String, Object> pMap);
	
	public Object get_inquire();
	
	public List<Object> get_party_list(Map<String, Object> pMap);
	
	public List<Object> get_travel_list(Map<String, Object> pMap);
}
