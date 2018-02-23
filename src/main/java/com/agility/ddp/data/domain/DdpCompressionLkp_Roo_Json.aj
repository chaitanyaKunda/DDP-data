// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCompressionLkp;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCompressionLkp_Roo_Json {
    
    public String DdpCompressionLkp.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCompressionLkp.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCompressionLkp DdpCompressionLkp.fromJsonToDdpCompressionLkp(String json) {
        return new JSONDeserializer<DdpCompressionLkp>().use(null, DdpCompressionLkp.class).deserialize(json);
    }
    
    public static String DdpCompressionLkp.toJsonArray(Collection<DdpCompressionLkp> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCompressionLkp.toJsonArray(Collection<DdpCompressionLkp> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCompressionLkp> DdpCompressionLkp.fromJsonArrayToDdpCompressionLkps(String json) {
        return new JSONDeserializer<List<DdpCompressionLkp>>().use(null, ArrayList.class).use("values", DdpCompressionLkp.class).deserialize(json);
    }
    
}