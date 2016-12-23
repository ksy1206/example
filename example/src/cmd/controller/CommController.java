package cmd.controller;


import java.awt.Image;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

import net.sf.json.JSONObject;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import helper.util.FileUtil;
import helper.util.ThumbnailImageMakeHelper;




@Controller
@RequestMapping("/comm")
public class CommController {
	private final static Log logger = LogFactory.getLog(CommController.class);

	
	/**
	 * 첨부파일 등록(일반)
	 * 
	 * @param req
	 * @param res
	 * @return ModelAndView
	 * @throws BusinessException
	 */
	@RequestMapping("/saveFileUpload.do")
	public ModelAndView saveFileUpload(HttpServletRequest req,
			HttpServletResponse res, @RequestParam Map<String, Object> pMap)
			throws Exception {
		System.out.println("+++++++++++++++++++++++++++++++++++++++++");
		// ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		PrintWriter out = null;
		ModelAndView output = new ModelAndView();
		int result = 0;
		try {

			String fileGbn = req.getParameter("fileGbn");
			System.out.println(fileGbn);
			HttpSession session = req.getSession();
			String doc_root = session.getServletContext().getRealPath("/upload");
			
			String os = System.getProperty("os.name");

			String fileDestPath = "";
			System.out.println("* 현재운영체제 : " + os);

			fileDestPath = doc_root + File.separator + "img"
					+ File.separator + "temp";
	
			System.out.println("* 파일 저장 경로 : " + fileDestPath);
			
			File destinationDir = new File(fileDestPath);
			if (!destinationDir.exists()) {
				destinationDir.mkdirs();
			}
			
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) req;
			
		
			MultipartFile file = multipartRequest.getFile("file");
			
			String fileName = file.getOriginalFilename();
			System.out.println("filename=--->"+fileName);
			
			String fileType = fileName.substring(fileName.indexOf("."));
			
			File destination = File.createTempFile(fileGbn.toUpperCase(),fileType, destinationDir);
			
			
			int fileSize = FileCopyUtils.copy(file.getInputStream(),
					new FileOutputStream(destination));
			
			
			//썸네일은 나중에 오픈
			String dest = "";
			if (fileSize >= 0) {
				String thumbNail_file_name = "";
				//if (fileGbn.toUpperCase().equals("LOGO")) { // LOGO 이미지
					
					thumbNail_file_name = "RESIZE_" + destination.getName();
					
					Image img = new ImageIcon(fileDestPath + File.separator
							+ destination.getName()).getImage();
					System.out.println("*이미지 넓이 : " + img.getWidth(null)
							+ "*이미지 높이 : " + img.getHeight(null));
					
					if (ThumbnailImageMakeHelper.createThumbnail(fileDestPath
							+ File.separator + destination.getName(),
							fileDestPath, thumbNail_file_name, 1024, 1024)) {
						System.gc(); // WAS의 가비지 컬렉터가 메모리상에서 풀어주기 전에 삭제를 하려했더니
										// 안지워져서.... 강제로 정리를함. (단, 이 method를
										// 호출해도 언제 쓰레기를 처리할지는 모른다네 ㅠㅠ)
						FileUtil.deleteFile(fileDestPath + File.separator
								+ destination.getName());
					} else {
						System.gc(); // WAS의 가비지 컬렉터가 메모리상에서 풀어주기 전에 삭제를 하려했더니
										// 안지워져서.... 강제로 정리를함. (단, 이 method를
										// 호출해도 언제 쓰레기를 처리할지는 모른다네 ㅠㅠ)
						FileUtil.moveFile(fileDestPath + File.separator
								+ destination.getName(), fileDestPath,
								thumbNail_file_name);
					}
				//} 
					// 썸네일이미지로 변경
					fileName = thumbNail_file_name;
					String a = "";
					if(os.equals("Linux")){
						 a = destination.toString().substring(0,destination.toString().lastIndexOf("/")+1);
					}else{
						 a = destination.toString().substring(0,destination.toString().lastIndexOf("\\")+1);
					}
					
					dest = a+fileName; 
			}
			
			
			
			rMap.put("fileName", fileName);
			rMap.put("fileUploadPath", fileDestPath);
			rMap.put("destination", dest);
			rMap.put("fileSize", fileSize);
			rMap.put("fileSeparator", File.separator);
			rMap.put("osName", os);

			result = 1;
				
			rMap.put("resultCode", result);
				
			JSONObject jsonObject = JSONObject.fromObject(rMap);
			System.out.println("json - " + jsonObject);

			// 아래 부분은 IE8과 IE9에서 업로드후, json데이터를 제대로 받지 못하여 수정함.
			res.setContentType("text/plain; charset=UTF-8"); // HttpServletResponse
																// response
		
			
			
			
//			out = res.getWriter();
//			out.print(jsonObject.toString());
//			out.flush();
			
		} catch (Exception e) {
			throw new Exception(e.toString());
		}
		
		output.addAllObjects(rMap);
		output.setViewName("jsonView");
		return output;

	}
	

	
	/**
	 * 업체파일업로드
	 * 
	 * @param req
	 * @param res
	 * @return ModelAndView
	 * @throws BusinessException
	 */
	@RequestMapping("/saveCompanyFile.do")
	public ModelAndView saveCompanyFile(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		int result = 0;

		try {

			HttpSession sesson = req.getSession();
			String doc_root = sesson.getServletContext().getRealPath("/upload");

			String fileDestPath = "";
			String file_title = pMap.get("file_title").toString();
			fileDestPath = doc_root + File.separator + "img" + File.separator + file_title;

			int file_cnt = Integer.parseInt(pMap.get("file_cnt").toString());

			String[] file_stat_arr = new String[1];

			if (file_cnt != 1) {
				file_stat_arr = null;
				file_stat_arr = pMap.get("file_stat").toString().split(",");
			} else {

				file_stat_arr[0] = pMap.get("file_stat").toString();
			}

			for (int i = 0; i < file_cnt; i++) {

				String fileUploadPath = (String) pMap.get("fileUploadPath_" + file_stat_arr[i]);
				String orgName = (String) pMap.get("fileNewName_" + file_stat_arr[i]);
				String destination = (String) pMap.get("destination_" + file_stat_arr[i]);

				System.out.println(" * 임시 파일 경로 : " + destination);
	
				if (!orgName.equals("") && !fileUploadPath.equals("")) {
					String temp_file_ext = orgName.substring(orgName.lastIndexOf(".") + 1);
					String temp_total_path = destination;
					Calendar calendar = Calendar.getInstance();
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
					String today = dateFormat.format(calendar.getTime());
					String newName = file_title + today + "(" + i + ")." + temp_file_ext;
					// System.gc();
					FileUtil.moveFile(temp_total_path, fileDestPath, newName);

					System.out.println(" * 새로 저장된 파일 경로 : " + fileDestPath);
					System.out.println(" * 새로 저장된 파일 이름 : " + newName);

					rMap.put("fileUploadPath_" + file_stat_arr[i], fileDestPath);
					rMap.put("fileNewName_" + file_stat_arr[i], newName);
				}
			}

		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("resultCode", result);

		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;
	}
  


}
