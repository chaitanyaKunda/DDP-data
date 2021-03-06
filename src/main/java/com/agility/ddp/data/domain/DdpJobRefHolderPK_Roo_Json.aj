// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpJobRefHolderPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpJobRefHolderPK_Roo_Json {
    
    public String DdpJobRefHolderPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public String DdpJobRefHolderPK.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }
    
    public static DdpJobRefHolderPK DdpJobRefHolderPK.fromJsonToDdpJobRefHolderPK(String json) {
        return new JSONDeserializer<DdpJobRefHolderPK>().use(null, DdpJobRefHolderPK.class).deserialize(json);
    }
    
    public static String DdpJobRefHolderPK.toJsonArray(Collection<DdpJobRefHolderPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static String DdpJobRefHolderPK.toJsonArray(Collection<DdpJobRefHolderPK> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<DdpJobRefHolderPK> DdpJobRefHolderPK.fromJsonArrayToDdpJobRefHolderPKs(String json) {
        return new JSONDeserializer<List<DdpJobRefHolderPK>>().use(null, ArrayList.class).use("values", DdpJobRefHolderPK.class).deserialize(json);
    }
    
}
