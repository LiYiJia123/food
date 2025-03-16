package com.controller;

import java.io.*;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.ConfigEntity;
import com.entity.EIException;
import com.service.ConfigService;
import com.utils.R;

/**
 * 上传文件映射表
 */
@RestController
@RequestMapping("file")
@SuppressWarnings({"unchecked","rawtypes"})
public class FileController{
	@Autowired
    private ConfigService configService;
	/**
	 * 上传文件
	 */
	@RequestMapping("/upload")
	public R upload(@RequestParam("file") MultipartFile file,String type) throws Exception {
		if (file.isEmpty()) {
			throw new EIException("上传文件不能为空");
		}
		MultipartFile newFile = copyMultipartFile(file);

		String fileExt = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
		File path = new File(ResourceUtils.getURL("classpath:static").getPath());
		if(!path.exists()) {
		    path = new File("");
		}
		File upload = new File(path.getAbsolutePath(),"/upload/");
		if(!upload.exists()) {
		    upload.mkdirs();
		}
		String fileName = new Date().getTime()+"."+fileExt;

		//通过transferTo方法保存到本地目录中
		//第一次传输，到编译后代码的文件夹
		File dest = new File(upload.getAbsolutePath()+"/"+fileName);
		file.transferTo(dest);
		//第二次传送，到源码的文件夹
		File dest2 = new File("F:\\BiYeSheJi\\XiangMu\\ZongHe\\xm\\shipinkucunguanli\\back\\src\\main\\resources\\static\\upload\\"+fileName);
		newFile.transferTo(dest2);

		if(StringUtils.isNotBlank(type) && type.equals("1")) {
			ConfigEntity configEntity = configService.selectOne(new EntityWrapper<ConfigEntity>().eq("name", "faceFile"));
			if(configEntity==null) {
				configEntity = new ConfigEntity();
				configEntity.setName("faceFile");
				configEntity.setValue(fileName);
			} else {
				configEntity.setValue(fileName);
			}
			//通过url存储到数据库
			configService.insertOrUpdate(configEntity);
		}
		return R.ok().put("file", fileName);
	}

	//根据现有文件类复制一份新文件类
	public MultipartFile copyMultipartFile(MultipartFile originalFile) {
		try (ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
			// 将原始文件内容复制到输出流
			FileCopyUtils.copy(originalFile.getInputStream(), outputStream);
			// 将输出流转换为输入流，以便创建新的 MultipartFile
			ByteArrayInputStream inputStream = new ByteArrayInputStream(outputStream.toByteArray());
			// 使用新的输入流创建新的 MultipartFile 对象（这里以MockMultipartFile为例）
			return new MockMultipartFile(originalFile.getName(), originalFile.getOriginalFilename(),
					originalFile.getContentType(), inputStream);
		} catch (IOException e) {
			throw new RuntimeException("Failed to copy MultipartFile", e);
		}
	}


	/**
	 * 下载文件
	 */
	@IgnoreAuth
	@RequestMapping("/download")
	public ResponseEntity<byte[]> download(@RequestParam String fileName) {
		try {
			File path = new File(ResourceUtils.getURL("classpath:static").getPath());
			if(!path.exists()) {
			    path = new File("");
			}
			File upload = new File(path.getAbsolutePath(),"/upload/");
			if(!upload.exists()) {
			    upload.mkdirs();
			}
			File file = new File(upload.getAbsolutePath()+"/"+fileName);
			if(file.exists()){
				/*if(!fileService.canRead(file, SessionManager.getSessionUser())){
					getResponse().sendError(403);
				}*/
				HttpHeaders headers = new HttpHeaders();
			    headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);    
			    headers.setContentDispositionFormData("attachment", fileName);    
			    return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers, HttpStatus.CREATED);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
