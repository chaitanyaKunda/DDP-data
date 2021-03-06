// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGroupSetup;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpGroupSetup_Roo_Json {
    
    public String DdpGroupSetup.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpGroupSetup.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpGroupSetup DdpGroupSetup.fromJsonToDdpGroupSetup(String json) {
        return new JSONDeserializer<DdpGroupSetup>().use(null, DdpGroupSetup.class).deserialize(json);
    }
    
    public static String DdpGroupSetup.toJsonArray(Collection<DdpGroupSetup> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpGroupSetup.toJsonArray(Collection<DdpGroupSetup> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpGroupSetup> DdpGroupSetup.fromJsonArrayToDdpGroupSetups(String json) {
        return new JSONDeserializer<List<DdpGroupSetup>>().use(null, ArrayList.class).use("values", DdpGroupSetup.class).deserialize(json);
    }
    
}
