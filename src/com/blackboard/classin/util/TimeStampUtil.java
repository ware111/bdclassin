package com.blackboard.classin.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 获取指定时间戳类
 * @autho panhaiming
 * @date 20200730
 *
 * */
public class TimeStampUtil {
    public static long getTimeStamp(String dateTime){
        Date date = null;
        try {
            date = new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(dateTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long timestamp = date.getTime()/1000;
        return timestamp;
    }
}
