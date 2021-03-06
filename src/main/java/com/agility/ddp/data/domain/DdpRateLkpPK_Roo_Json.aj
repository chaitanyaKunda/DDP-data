// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRateLkpPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpRateLkpPK_Roo_Json {
    
    public String DdpRateLkpPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public String DdpRateLkpPK.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }
    
    public static DdpRateLkpPK DdpRateLkpPK.fromJsonToDdpRateLkpPK(String json) {
        return new JSONDeserializer<DdpRateLkpPK>().use(null, DdpRateLkpPK.class).deserialize(json);
    }
    
    public static String DdpRateLkpPK.toJsonArray(Collection<DdpRateLkpPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static String DdpRateLkpPK.toJsonArray(Collection<DdpRateLkpPK> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<DdpRateLkpPK> DdpRateLkpPK.fromJsonArrayToDdpRateLkpPKs(String json) {
        return new JSONDeserializer<List<DdpRateLkpPK>>().use(null, ArrayList.class).use("values", DdpRateLkpPK.class).deserialize(json);
    }
    
}
