package cmd.serviceImpl;

import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import cmd.service.AdminService;
import cmd.vo.AdminVO;
import helper.dao.CommonDAO;
import net.sf.json.JSONObject;




@Service("adminService")
public class AdminServiceImpl implements AdminService
{
	private final static Log logger = LogFactory.getLog(AdminServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> get_travel_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_travel_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}

	@Override
	public List<Object> get_notice_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_notice_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	
	@Override
	public List<Object> get_all_travel_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_all_travel_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	
	
	@Override
	public List<Object> get_add_info_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_add_info_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	
	@Override
	public String save_notice(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.insertData("admin.save_notice", pMap);
			
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	@Override
	public String delete_notice(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.delete_notice", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	
	
	@Override
	public String update_notice(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.update_notice", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	@Override
	public String update_add_info(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.update_add_info", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		
		System.out.println(result);
		return result;
	}
	
	
	@Override
	public String save_travel(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.insertData("admin.save_travel", pMap);

			
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	@Override
	public String delete_travel(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.delete_travel", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	
	
	@Override
	public String update_travel(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.update_travel", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	
	@Override
	public List<Object> get_food_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_food_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	
	@Override
	public String save_food(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		
		String update_yn = pMap.get("update_yn").toString();
		
		
		try {
			if(update_yn.equals("N")){
				chk =  this.commonDao.insertData("admin.save_food", pMap);
			}else{
				chk =  this.commonDao.updateData("admin.update_food", pMap);
			}
			

			
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	@Override
	public String delete_food(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.delete_food", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	@Override
	public List<Object> get_all_food_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_all_food_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	
	

	
	
	@Override
	public List<Object> get_party_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_party_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	@Override
	public List<Object> get_all_party_list(Map<String, Object> pMap) {
		List<Object> rList = null;
    	
    	try {
			
    		rList = this.commonDao.getListData("admin.get_all_party_list", pMap);
		
		} catch (Exception e) {
			logger.debug(e.toString());
		}
    	
    	return rList;	
	}
	@Override
	public String save_party(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.insertData("admin.save_party", pMap);

			
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	@Override
	public String delete_party(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.delete_party", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}
	
	
	
	
	@Override
	public String update_party(Map<String, Object> pMap) throws Exception {
		int chk = 0;
		String result = "N";
		try {
			chk =  this.commonDao.updateData("admin.update_party", pMap);
			
		} catch (Exception e) {
			e.toString();
		}
		if(chk==0){
			
		}else{
			result = "Y";
		}
		
		return result;
	}


	
	
}//end class

