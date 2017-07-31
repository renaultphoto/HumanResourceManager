package com.renault.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * 用 HttpServletResponse 返回前台 JSON 格式数据
 * @author renault
 *
 */
public class ResponseUtil {

	  public static void write(HttpServletResponse response, Object o)
	            throws Exception {
	        response.setContentType("text/html;charset=utf-8");
	        response.addHeader("Access-Control-Allow-Origin", "*");
	        PrintWriter out = response.getWriter();
	        out.println(o.toString());
	        out.flush();
	        out.close();
	    }
}
