// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDocnameConv;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpDocnameConv_Roo_Json {
    
    public String DdpDocnameConv.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpDocnameConv.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpDocnameConv DdpDocnameConv.fromJsonToDdpDocnameConv(String json) {
        return new JSONDeserializer<DdpDocnameConv>().use(null, DdpDocnameConv.class).deserialize(json);
    }
    
    public static String DdpDocnameConv.toJsonArray(Collection<DdpDocnameConv> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpDocnameConv.toJsonArray(Collection<DdpDocnameConv> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpDocnameConv> DdpDocnameConv.fromJsonArrayToDdpDocnameConvs(String json) {
        return new JSONDeserializer<List<DdpDocnameConv>>().use(null, ArrayList.class).use("values", DdpDocnameConv.class).deserialize(json);
    }
    
}
