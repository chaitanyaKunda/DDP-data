// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizationHolder;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCategorizationHolder_Roo_Json {
    
    public String DdpCategorizationHolder.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCategorizationHolder.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCategorizationHolder DdpCategorizationHolder.fromJsonToDdpCategorizationHolder(String json) {
        return new JSONDeserializer<DdpCategorizationHolder>().use(null, DdpCategorizationHolder.class).deserialize(json);
    }
    
    public static String DdpCategorizationHolder.toJsonArray(Collection<DdpCategorizationHolder> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCategorizationHolder.toJsonArray(Collection<DdpCategorizationHolder> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCategorizationHolder> DdpCategorizationHolder.fromJsonArrayToDdpCategorizationHolders(String json) {
        return new JSONDeserializer<List<DdpCategorizationHolder>>().use(null, ArrayList.class).use("values", DdpCategorizationHolder.class).deserialize(json);
    }
    
}