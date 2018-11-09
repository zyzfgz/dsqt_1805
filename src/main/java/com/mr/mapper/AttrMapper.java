package com.mr.mapper;

import com.mr.model.OBJECTMallAttr;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyz on 2018/11/6.
 */
public interface AttrMapper {
    List<OBJECTMallAttr> findAttrByClass2(@Param("flbh2") Integer flbh2);
}
