// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommUnc;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCommUnc_Roo_Json {
    
    public String DdpCommUnc.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCommUnc.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCommUnc DdpCommUnc.fromJsonToDdpCommUnc(String json) {
        return new JSONDeserializer<DdpCommUnc>().use(null, DdpCommUnc.class).deserialize(json);
    }
    
    public static String DdpCommUnc.toJsonArray(Collection<DdpCommUnc> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCommUnc.toJsonArray(Collection<DdpCommUnc> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCommUnc> DdpCommUnc.fromJsonArrayToDdpCommUncs(String json) {
        return new JSONDeserializer<List<DdpCommUnc>>().use(null, ArrayList.class).use("values", DdpCommUnc.class).deserialize(json);
    }
    
}
