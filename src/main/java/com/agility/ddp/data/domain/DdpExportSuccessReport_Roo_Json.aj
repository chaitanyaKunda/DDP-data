// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportSuccessReport;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DdpExportSuccessReport_Roo_Json {
    
    public String DdpExportSuccessReport.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String DdpExportSuccessReport.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DdpExportSuccessReport DdpExportSuccessReport.fromJsonToDdpExportSuccessReport(String json) {
        return new JSONDeserializer<DdpExportSuccessReport>().use(null, DdpExportSuccessReport.class).deserialize(json);
    }
    
    public static String DdpExportSuccessReport.toJsonArray(Collection<DdpExportSuccessReport> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String DdpExportSuccessReport.toJsonArray(Collection<DdpExportSuccessReport> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DdpExportSuccessReport> DdpExportSuccessReport.fromJsonArrayToDdpExportSuccessReports(String json) {
        return new JSONDeserializer<List<DdpExportSuccessReport>>().use(null, ArrayList.class).use("values", DdpExportSuccessReport.class).deserialize(json);
    }
    
}
