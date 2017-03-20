package com.ft.utils;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.ft.entity.FNO;

public class FNorgin {
	protected final Logger logger = Logger.getLogger(getClass());  
	
	public String FNOsearch(String arg)
    {
	    FNO fno=new FNO();
	    fno.setXingshi(arg);
       try {
           HttpClient c = new DefaultHttpClient();
           HttpPost post = new HttpPost("http://api.avatardata.cn/XingShiQiYuan/LookUp?key=7998112394c14e7f8fb226aa6aa980e1&"+"xingshi="+fno.getXingshi());
           HttpResponse response = c.execute(post);
           if(response != null){
               HttpEntity resEntity = response.getEntity();
               
               if(resEntity != null){
                 String  result = EntityUtils.toString(resEntity, "UTF-8");
                 return result;
            	   //return (JSON) response;
                 
               }
               
           }
           
       
       }catch (Exception e)
       {
           e.printStackTrace();
       }
       return null;

	
}

	

}
