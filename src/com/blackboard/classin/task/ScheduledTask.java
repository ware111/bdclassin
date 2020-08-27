package com.blackboard.classin.task;

import com.blackboard.classin.service.IClassinCourseClass;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

public class ScheduledTask {

    private Logger log = Logger.getLogger(ScheduledTask.class);

    @Autowired
    private IClassinCourseClass iClassinCourseClass;

    /**
     * 20秒后执行
     * 初始化操作
     */
//    @Scheduled(initialDelay = 20000L, fixedRate = 600 * 60 * 1000)
//    public   void initTask() {
//        try {
//
//            log.info("exec beginAutoCreateClass start");
//
//            iClassinCourseClass.autoCreateClassinCourseClass();
//
//            log.info("exec beginAutoCreateClass start");
//
//
//
//        } catch (Exception e) {
//            log.error("exec beginAutoCreateClass error",e);
//        }
//
//    }
}
