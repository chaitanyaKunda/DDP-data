// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpAedReqDocs;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpAedReqDocs_Roo_Json {
    
    public String DdpAedReqDocs.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpAedReqDocs.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpAedReqDocs DdpAedReqDocs.fromJsonToDdpAedReqDocs(String json) {
        return new JSONDeserializer<DdpAedReqDocs>().use(null, DdpAedReqDocs.class).deserialize(json);
    }
    
    public static String DdpAedReqDocs.toJsonArray(Collection<DdpAedReqDocs> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpAedReqDocs.toJsonArray(Collection<DdpAedReqDocs> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpAedReqDocs> DdpAedReqDocs.fromJsonArrayToDdpAedReqDocses(String json) {
        return new JSONDeserializer<List<DdpAedReqDocs>>().use(null, ArrayList.class).use("values", DdpAedReqDocs.class).deserialize(json);
    }
    
}