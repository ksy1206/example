package cmd.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.TravelService;
import cmd.vo.FoodVO;
import cmd.vo.TravelVO;
import helper.dao.CommonDAO;

@Service("travelService")
public class TravelServiceImpl implements TravelService {
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> qet_travel_list(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> list = null;
		
		try {
			list = this.commonDao.getListData("travel.qet_travel_list", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Object get_travel_no(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		TravelVO travleVo = null;
		
		try {
			travleVo = (TravelVO) this.commonDao.getReadData("travel.get_travel_no", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return travleVo;
	}

	@Override
	public List<Object> get_food_list(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> list = null;
		
		try {
			list = this.commonDao.getListData("travel.get_food_list", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Object get_food_details(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		FoodVO foodVo = null;
		
		try {
			foodVo = (FoodVO) this.commonDao.getReadData("travel.get_food_details", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return foodVo;
	}

}
