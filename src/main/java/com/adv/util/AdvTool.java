package com.adv.util;

import java.sql.ResultSet;

/**
 * @ClassName $ {NAME}
 * @Description TODO
 * @Author fjw
 * @Date 2019/10/31 10:55 AM
 * @Version 1.0
 **/
public class AdvTool {
    //完善资料
    public static void wszl(String memo,String xm,String tel){
        try {

            MysqlDB db = new MysqlDB();
            String sql = "insert into adv(xm,tel,memo,create_time) values('"+xm+"','"+tel+"','"+memo+"','"+TimeString.nowTime()+"')";
            db.executeInsert(sql);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
