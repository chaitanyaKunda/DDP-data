// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRuleDetail;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpRuleDetail_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DdpRuleDetail.entityManager;
    
    public static final EntityManager DdpRuleDetail.entityManager() {
        EntityManager em = new DdpRuleDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DdpRuleDetail.countDdpRuleDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DdpRuleDetail o", Long.class).getSingleResult();
    }
    
    public static List<DdpRuleDetail> DdpRuleDetail.findAllDdpRuleDetails() {
        return entityManager().createQuery("SELECT o FROM DdpRuleDetail o", DdpRuleDetail.class).getResultList();
    }
    
    public static DdpRuleDetail DdpRuleDetail.findDdpRuleDetail(Integer rdtId) {
        if (rdtId == null) return null;
        return entityManager().find(DdpRuleDetail.class, rdtId);
    }
    
    public static List<DdpRuleDetail> DdpRuleDetail.findDdpRuleDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DdpRuleDetail o", DdpRuleDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DdpRuleDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DdpRuleDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DdpRuleDetail attached = DdpRuleDetail.findDdpRuleDetail(this.rdtId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DdpRuleDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DdpRuleDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DdpRuleDetail DdpRuleDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DdpRuleDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
