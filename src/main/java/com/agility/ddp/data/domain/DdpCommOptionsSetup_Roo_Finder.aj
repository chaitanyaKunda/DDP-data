// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommOptionsSetup;
import com.agility.ddp.data.domain.DdpRuleDetail;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect DdpCommOptionsSetup_Roo_Finder {
    
    public static TypedQuery<DdpCommOptionsSetup> DdpCommOptionsSetup.findDdpCommOptionsSetupsByCopRdtId(DdpRuleDetail copRdtId) {
        if (copRdtId == null) throw new IllegalArgumentException("The copRdtId argument is required");
        EntityManager em = DdpCommOptionsSetup.entityManager();
        TypedQuery<DdpCommOptionsSetup> q = em.createQuery("SELECT o FROM DdpCommOptionsSetup AS o WHERE o.copRdtId = :copRdtId", DdpCommOptionsSetup.class);
        q.setParameter("copRdtId", copRdtId);
        return q;
    }
    
}