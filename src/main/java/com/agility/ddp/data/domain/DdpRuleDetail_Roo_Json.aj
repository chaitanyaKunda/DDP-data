// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRuleDetail;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpRuleDetail_Roo_Json {
    
    public String DdpRuleDetail.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpRuleDetail.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpRuleDetail DdpRuleDetail.fromJsonToDdpRuleDetail(String json) {
        return new JSONDeserializer<DdpRuleDetail>().use(null, DdpRuleDetail.class).deserialize(json);
    }
    
    public static String DdpRuleDetail.toJsonArray(Collection<DdpRuleDetail> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpRuleDetail.toJsonArray(Collection<DdpRuleDetail> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpRuleDetail> DdpRuleDetail.fromJsonArrayToDdpRuleDetails(String json) {
        return new JSONDeserializer<List<DdpRuleDetail>>().use(null, ArrayList.class).use("values", DdpRuleDetail.class).deserialize(json);
    }
    
}
