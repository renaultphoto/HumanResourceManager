package com.renault.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	//格式化日期
	public static Date getDate() throws ParseException{
		Date date = new Date();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-yy-dd");
		return sdf.parse(sdf.format(date));
	}

}
