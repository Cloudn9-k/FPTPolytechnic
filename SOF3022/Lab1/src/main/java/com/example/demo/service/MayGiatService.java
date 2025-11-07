package com.example.demo.service;

import com.example.demo.model.MayGiat;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class MayGiatService {
    private List<MayGiat> ds = null;
    public MayGiatService(){
        ds =new ArrayList(Arrays.asList(
           new MayGiat("1",20.0f,"may giat a", 2007),
        new MayGiat("2",30.0f,"may giat b", 2008),
        new MayGiat("3",40.0f,"may giat c", 2009)
            ));
    }

    public List<MayGiat> getAll() {
        return ds;
    }
    public MayGiat getDetail(String ma){
        for(MayGiat mg: ds){
            if (mg.getMa().equals(ma)){
                return mg;
            }
        }
        return null;
    }
    public void add(MayGiat mg){
        ds.add(mg);
    }
    public void update(MayGiat mg){
        int index =-1;
        for (int i = 0; i < ds.size(); i++) {
            if (ds.get(i).getMa().equals(mg.getMa())){
                index =1;
            }
        }
        ds.set(index,mg);
    }
}
