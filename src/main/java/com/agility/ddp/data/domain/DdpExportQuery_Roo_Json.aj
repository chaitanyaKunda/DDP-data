// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportQuery;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpExportQuery_Roo_Json {
    
    public String DdpExportQuery.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpExportQuery.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpExportQuery DdpExportQuery.fromJsonToDdpExportQuery(String json) {
        return new JSONDeserializer<DdpExportQuery>().use(null, DdpExportQuery.class).deserialize(json);
    }
    
    public static String DdpExportQuery.toJsonArray(Collection<DdpExportQuery> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpExportQuery.toJsonArray(Collection<DdpExportQuery> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpExportQuery> DdpExportQuery.fromJsonArrayToDdpExportQuerys(String json) {
        return new JSONDeserializer<List<DdpExportQuery>>().use(null, ArrayList.class).use("values", DdpExportQuery.class).deserialize(json);
    }
    
}
