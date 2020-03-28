/*
 *  Copyright(c)2020
 *  项目名称:hbxytrade
 *  文件名称:FileHandlerUtil.java
 *  Date:2020/3/28 下午7:13
 *  Author:Code Ant Jiang
 *  *请勿抄袭或作毕设，抄袭必究！
 */

package com.jwh.trade.utils;

import com.jwh.trade.javabean.Goods;
import com.jwh.trade.service.GoodsService;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class FileHandlerUtil {
    public static Boolean uploadFiles(HttpServletRequest request, Goods goods, Integer num,
                                      MultipartFile[] groupImg, Map<String, Object> map) {
        StringBuilder stringBuilder = new StringBuilder();
        //上传文件
        String path = request.getServletContext().getRealPath("/") + "assets\\img\\upload_pic_package\\";
        try {
            String uid, uidSub;
            int count = 0;
            for (MultipartFile multipartFile : groupImg) {
                if (multipartFile.getSize() > 3 * 1024 * 1024) {
                    map.put("imgError", "*单个图片大小不能超过3MB");
                    return false;
                }
                uid = UUID.randomUUID().toString();
                uidSub = uid.substring(0, 5);
                String fileName = uidSub + ".jpg";
                File targetFile = new File(path + fileName);
                stringBuilder.append(uidSub).append(',');
                multipartFile.transferTo(targetFile);
                if (count == num)
                    goods.setShowImg(uidSub);
                count++;
            }
            System.out.println(stringBuilder);
            goods.setGroupImg(stringBuilder.toString().substring(0, stringBuilder.length() - 1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static Boolean deleteFiles(HttpServletRequest request, Integer id, GoodsService goodsService) {
        //删除文件
        String path = request.getServletContext().getRealPath("/") + "assets\\img\\upload_pic_package\\";
        Goods goods = goodsService.getGoodsById(id);
        List<String> list = Arrays.asList(goods.getGroupImg().split(","));
        try {
            for (String fileName : list) {
                File targetFile = new File(path + fileName + ".jpg");
                if(!targetFile.delete()){
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}
