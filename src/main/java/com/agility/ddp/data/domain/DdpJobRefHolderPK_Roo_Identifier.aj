// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpJobRefHolderPK;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect DdpJobRefHolderPK_Roo_Identifier {
    
    declare @type: DdpJobRefHolderPK: @Embeddable;
    
    @Column(name = "JRF_ID", nullable = false, length = 16)
    private String DdpJobRefHolderPK.jrfId;
    
    @Column(name = "JRF_JOB_ID", nullable = false, length = 120)
    private String DdpJobRefHolderPK.jrfJobId;
    
    @Column(name = "JRF_STATUS", nullable = false)
    private Integer DdpJobRefHolderPK.jrfStatus;
    
    @Column(name = "JRF_CREATED_DATE", nullable = false)
    private Calendar DdpJobRefHolderPK.jrfCreatedDate;
    
    @Column(name = "JRF_MODIFIED_DATE", nullable = false)
    private Calendar DdpJobRefHolderPK.jrfModifiedDate;
    
    public DdpJobRefHolderPK.new(String jrfId, String jrfJobId, Integer jrfStatus, Calendar jrfCreatedDate, Calendar jrfModifiedDate) {
        super();
        this.jrfId = jrfId;
        this.jrfJobId = jrfJobId;
        this.jrfStatus = jrfStatus;
        this.jrfCreatedDate = jrfCreatedDate;
        this.jrfModifiedDate = jrfModifiedDate;
    }

    private DdpJobRefHolderPK.new() {
        super();
    }

    public String DdpJobRefHolderPK.getJrfId() {
        return jrfId;
    }
    
    public String DdpJobRefHolderPK.getJrfJobId() {
        return jrfJobId;
    }
    
    public Integer DdpJobRefHolderPK.getJrfStatus() {
        return jrfStatus;
    }
    
    public Calendar DdpJobRefHolderPK.getJrfCreatedDate() {
        return jrfCreatedDate;
    }
    
    public Calendar DdpJobRefHolderPK.getJrfModifiedDate() {
        return jrfModifiedDate;
    }
    
}
