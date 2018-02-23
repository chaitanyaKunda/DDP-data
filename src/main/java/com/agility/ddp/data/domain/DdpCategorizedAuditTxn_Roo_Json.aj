// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedAuditTxn;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpCategorizedAuditTxn_Roo_Json {
    
    public String DdpCategorizedAuditTxn.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpCategorizedAuditTxn.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpCategorizedAuditTxn DdpCategorizedAuditTxn.fromJsonToDdpCategorizedAuditTxn(String json) {
        return new JSONDeserializer<DdpCategorizedAuditTxn>().use(null, DdpCategorizedAuditTxn.class).deserialize(json);
    }
    
    public static String DdpCategorizedAuditTxn.toJsonArray(Collection<DdpCategorizedAuditTxn> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpCategorizedAuditTxn.toJsonArray(Collection<DdpCategorizedAuditTxn> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpCategorizedAuditTxn> DdpCategorizedAuditTxn.fromJsonArrayToDdpCategorizedAuditTxns(String json) {
        return new JSONDeserializer<List<DdpCategorizedAuditTxn>>().use(null, ArrayList.class).use("values", DdpCategorizedAuditTxn.class).deserialize(json);
    }
    
}
