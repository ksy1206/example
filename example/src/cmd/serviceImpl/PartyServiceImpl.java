package cmd.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.PartyService;
import cmd.vo.PartyVO;
import helper.dao.CommonDAO;

@Service("partyService")
public class PartyServiceImpl implements PartyService {
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> qet_party_list(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		List<Object> list = null;
		
		try {
			list = this.commonDao.getListData("party.qet_party_list", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Object get_party_no(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		PartyVO partyVo = null;
		
		try {
			partyVo = (PartyVO) this.commonDao.getReadData("party.get_party_no", pMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return partyVo;
	}

}
