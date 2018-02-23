// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDmsDocsDetail;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpDmsDocsDetail_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DdpDmsDocsDetail.entityManager;
    
    public static final EntityManager DdpDmsDocsDetail.entityManager() {
        EntityManager em = new DdpDmsDocsDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DdpDmsDocsDetail.countDdpDmsDocsDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DdpDmsDocsDetail o", Long.class).getSingleResult();
    }
    
    public static List<DdpDmsDocsDetail> DdpDmsDocsDetail.findAllDdpDmsDocsDetails() {
        return entityManager().createQuery("SELECT o FROM DdpDmsDocsDetail o", DdpDmsDocsDetail.class).getResultList();
    }
    
    public static DdpDmsDocsDetail DdpDmsDocsDetail.findDdpDmsDocsDetail(Integer dddId) {
        if (dddId == null) return null;
        return entityManager().find(DdpDmsDocsDetail.class, dddId);
    }
    
    public static List<DdpDmsDocsDetail> DdpDmsDocsDetail.findDdpDmsDocsDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DdpDmsDocsDetail o", DdpDmsDocsDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DdpDmsDocsDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DdpDmsDocsDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DdpDmsDocsDetail attached = DdpDmsDocsDetail.findDdpDmsDocsDetail(this.dddId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DdpDmsDocsDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DdpDmsDocsDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DdpDmsDocsDetail DdpDmsDocsDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DdpDmsDocsDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
