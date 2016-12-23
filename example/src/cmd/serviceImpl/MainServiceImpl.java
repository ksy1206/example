package cmd.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import cmd.vo.NoticeVO;
import helper.dao.CommonDAO;

@Service("mainService")
public class MainServiceImpl implements MainService {
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> get_notice_list() {
		// TODO Auto-generated method stub
		List<Object> list = null;
		
		try {
			list = this.commonDao.getListData("main.get_notice_list");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Object get_notice_no(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		NoticeVO noticeVo = null;
		
		try {
			noticeVo = (NoticeVO) this.commonDao.getReadData("main.get_notice_no", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return noticeVo;
	}

	@Override
	public Object get_inquire() {
		// TODO Auto-generated method stub
		Map<String, Object> rMap = new HashMap<>();
		
		try {
			rMap = (Map<String, Object>) this.commonDao.getReadData("main.get_inquire");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rMap;
	}

	@Override
	public List<Object> get_party_list(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> list = null;
		
		try {
			list = this.commonDao.getListData("main.get_party_list", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Object> get_travel_list(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> list = null;
		
		try {
			list = this.commonDao.getListData("main.get_travel_list", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
