// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRole;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpRole_Roo_Json {
    
    public String DdpRole.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpRole.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpRole DdpRole.fromJsonToDdpRole(String json) {
        return new JSONDeserializer<DdpRole>().use(null, DdpRole.class).deserialize(json);
    }
    
    public static String DdpRole.toJsonArray(Collection<DdpRole> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpRole.toJsonArray(Collection<DdpRole> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpRole> DdpRole.fromJsonArrayToDdpRoles(String json) {
        return new JSONDeserializer<List<DdpRole>>().use(null, ArrayList.class).use("values", DdpRole.class).deserialize(json);
    }
    
}
