// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommunicationLkp;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCommunicationLkp_Roo_Json {
    
    public String DdpCommunicationLkp.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCommunicationLkp.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCommunicationLkp DdpCommunicationLkp.fromJsonToDdpCommunicationLkp(String json) {
        return new JSONDeserializer<DdpCommunicationLkp>().use(null, DdpCommunicationLkp.class).deserialize(json);
    }
    
    public static String DdpCommunicationLkp.toJsonArray(Collection<DdpCommunicationLkp> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCommunicationLkp.toJsonArray(Collection<DdpCommunicationLkp> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCommunicationLkp> DdpCommunicationLkp.fromJsonArrayToDdpCommunicationLkps(String json) {
        return new JSONDeserializer<List<DdpCommunicationLkp>>().use(null, ArrayList.class).use("values", DdpCommunicationLkp.class).deserialize(json);
    }
    
}
