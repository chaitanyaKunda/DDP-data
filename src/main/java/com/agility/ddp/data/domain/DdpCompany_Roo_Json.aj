// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCompany;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCompany_Roo_Json {
    
    public String DdpCompany.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCompany.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCompany DdpCompany.fromJsonToDdpCompany(String json) {
        return new JSONDeserializer<DdpCompany>().use(null, DdpCompany.class).deserialize(json);
    }
    
    public static String DdpCompany.toJsonArray(Collection<DdpCompany> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCompany.toJsonArray(Collection<DdpCompany> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCompany> DdpCompany.fromJsonArrayToDdpCompanys(String json) {
        return new JSONDeserializer<List<DdpCompany>>().use(null, ArrayList.class).use("values", DdpCompany.class).deserialize(json);
    }
    
}