package com.adv.util;

import java.sql.ResultSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @ClassName $ {NAME}
 * @Description TODO
 * @Author fjw
 * @Date 2019/10/31 10:55 AM
 * @Version 1.0
 **/
public class AdvTool {
    //完善资料
    public static void wszl(String memo,String xm,String tel,String msgtel){
        try {

            MysqlDB db = new MysqlDB();
            String sql = "insert into adv(xm,tel,memo,create_time) values('"+xm+"','"+tel+"','"+memo+"','"+TimeString.nowTime()+"')";
            System.out.println(sql);
            db.executeInsert(sql);

            //发短信功能
            if(AdvTool.isMobileNO(msgtel)){

                SmsDemo app = new SmsDemo();

                String content="";
                if (memo.length()>30) {
                    content=memo.substring(0,30);
                }else {
                    content=memo;
                }


                String time=TimeString.nowTime();


                app.sendMsg(""+msgtel+"","{\"name\":\""+xm+"\", \"tel\":\""+tel+"\", \"content\":\""+content+"\", \"time\":\""+time+"\"}");


            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //审核
    public static void confirm(int id ,int bz){
        try {
            MysqlDB db = new MysqlDB();
            String sql="";
            if (bz==0){
                sql="update adv set bz=1 where id="+id;
            }else{
                sql="update adv set bz=0 where id="+id;
            }
            db.executeUpdate(sql);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //java-正则表达式判断是否手机号
    public static boolean isMobileNO(String mobiles){

        Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");

        Matcher m = p.matcher(mobiles);

        //System.out.println(m.matches());

        return m.matches();

    }

    public static String GetHtml(){
        String ss = "";
        try {
            MysqlDB db = new MysqlDB();
            String sql = "select memo from adv_ggrl where id=6";
            ResultSet rs = db.executeQuery(sql);
            if (rs.next()){
                ss = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return  ss;
    }

}
