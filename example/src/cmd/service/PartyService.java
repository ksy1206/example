package cmd.service;

import java.util.List;
import java.util.Map;

public interface PartyService {
	
	public List<Object> qet_party_list(Map<String, Object> pMap);
	
	public Object get_party_no(Map<String, Object> pMap);
	
}
