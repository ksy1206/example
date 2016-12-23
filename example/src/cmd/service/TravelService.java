package cmd.service;

import java.util.List;
import java.util.Map;

public interface TravelService {
	
	public List<Object> qet_travel_list(Map<String, Object> pMap);
	
	public Object get_travel_no(Map<String, Object> pMap);
	
	public List<Object> get_food_list(Map<String, Object> pMap);
	
	public Object get_food_details(Map<String, Object> pMap);

}
