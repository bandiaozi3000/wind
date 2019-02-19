package com.wind.utils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
/**
 * 用于调用短信接口的类
 */
public class SMSCode {
	public static boolean sendCode(String phoneNumber,String code) throws IOException {
		String code_Str = URLEncoder.encode("#code#="+code,"utf-8");
		URL url = new URL("http://v.juhe.cn/sms/send?mobile="+phoneNumber+"&tpl_id=87738&tpl_value="+code_Str+"&key=166de5e36952183ef0803673422bcaf9");
		URLConnection connection=url.openConnection();
		connection.connect();
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
		StringBuffer buffer = new StringBuffer();
		String lineData=null;
		while((lineData=bufferedReader.readLine())!=null) {
			buffer.append(lineData);
			System.out.println(buffer.toString());
		}
		bufferedReader.close();
		if(buffer.toString().indexOf("\"error_code\":0")>=0) {
			return true;
		}
		return false;
	}
	
	public static boolean sendINfo(String phoneNumber) throws IOException {
		URL url = new URL("http://v.juhe.cn/sms/send?mobile="+phoneNumber+"&tpl_id=102631&key=166de5e36952183ef0803673422bcaf9");
		URLConnection connection=url.openConnection();
		connection.connect();
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
		StringBuffer buffer = new StringBuffer();
		String lineData=null;
		while((lineData=bufferedReader.readLine())!=null) {
			buffer.append(lineData);
			System.out.println(buffer.toString());
		}
		bufferedReader.close();
		if(buffer.toString().indexOf("\"error_code\":0")>=0) {
			return true;
		}
		return false;
	}
}
