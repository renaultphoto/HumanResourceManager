package com.renault.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.renault.domain.Admin;
import com.renault.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring 配置文件
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class AdminTest {

	@Autowired
	private AdminService adminService;
	
	//登录测试
	@Test
	public void testLogin(){
		Admin admin = new Admin();
		admin.setUsername("superadmin");
	    admin.setPassword("123456");
	    System.out.println(adminService.login(admin).toString());
		
	}
	
	
}
