// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedDocs;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCategorizedDocs_Roo_Json {
    
    public String DdpCategorizedDocs.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCategorizedDocs.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCategorizedDocs DdpCategorizedDocs.fromJsonToDdpCategorizedDocs(String json) {
        return new JSONDeserializer<DdpCategorizedDocs>().use(null, DdpCategorizedDocs.class).deserialize(json);
    }
    
    public static String DdpCategorizedDocs.toJsonArray(Collection<DdpCategorizedDocs> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCategorizedDocs.toJsonArray(Collection<DdpCategorizedDocs> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCategorizedDocs> DdpCategorizedDocs.fromJsonArrayToDdpCategorizedDocses(String json) {
        return new JSONDeserializer<List<DdpCategorizedDocs>>().use(null, ArrayList.class).use("values", DdpCategorizedDocs.class).deserialize(json);
    }
    
}
