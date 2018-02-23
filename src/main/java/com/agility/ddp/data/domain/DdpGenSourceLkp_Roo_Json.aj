// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGenSourceLkp;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpGenSourceLkp_Roo_Json {
    
    public String DdpGenSourceLkp.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpGenSourceLkp.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpGenSourceLkp DdpGenSourceLkp.fromJsonToDdpGenSourceLkp(String json) {
        return new JSONDeserializer<DdpGenSourceLkp>().use(null, DdpGenSourceLkp.class).deserialize(json);
    }
    
    public static String DdpGenSourceLkp.toJsonArray(Collection<DdpGenSourceLkp> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpGenSourceLkp.toJsonArray(Collection<DdpGenSourceLkp> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpGenSourceLkp> DdpGenSourceLkp.fromJsonArrayToDdpGenSourceLkps(String json) {
        return new JSONDeserializer<List<DdpGenSourceLkp>>().use(null, ArrayList.class).use("values", DdpGenSourceLkp.class).deserialize(json);
    }
    
}
