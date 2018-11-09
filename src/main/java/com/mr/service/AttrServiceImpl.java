package com.mr.service;

import com.mr.mapper.AttrMapper;
import com.mr.model.OBJECTMallAttr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zyz on 2018/11/6.
 */
@Service
public class AttrServiceImpl implements  AttrService {
    @Autowired
    private AttrMapper attrMapper;

    @Override
    public List<OBJECTMallAttr> findAttrByClass2(Integer flbh2) {
        return attrMapper.findAttrByClass2(flbh2);
    }
}
