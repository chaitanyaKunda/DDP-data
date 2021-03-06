// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpMergeSetup;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpMergeSetup_Roo_Json {
    
    public String DdpMergeSetup.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpMergeSetup.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpMergeSetup DdpMergeSetup.fromJsonToDdpMergeSetup(String json) {
        return new JSONDeserializer<DdpMergeSetup>().use(null, DdpMergeSetup.class).deserialize(json);
    }
    
    public static String DdpMergeSetup.toJsonArray(Collection<DdpMergeSetup> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpMergeSetup.toJsonArray(Collection<DdpMergeSetup> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpMergeSetup> DdpMergeSetup.fromJsonArrayToDdpMergeSetups(String json) {
        return new JSONDeserializer<List<DdpMergeSetup>>().use(null, ArrayList.class).use("values", DdpMergeSetup.class).deserialize(json);
    }
    
}
