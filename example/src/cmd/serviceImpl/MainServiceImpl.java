package cmd.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cmd.service.MainService;
import helper.dao.CommonDAO;

@Service("mainService")
public class MainServiceImpl implements MainService {
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

}
