// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedDetail;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpCategorizedDetail_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DdpCategorizedDetail.entityManager;
    
    public static final EntityManager DdpCategorizedDetail.entityManager() {
        EntityManager em = new DdpCategorizedDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DdpCategorizedDetail.countDdpCategorizedDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DdpCategorizedDetail o", Long.class).getSingleResult();
    }
    
    public static List<DdpCategorizedDetail> DdpCategorizedDetail.findAllDdpCategorizedDetails() {
        return entityManager().createQuery("SELECT o FROM DdpCategorizedDetail o", DdpCategorizedDetail.class).getResultList();
    }
    
    public static DdpCategorizedDetail DdpCategorizedDetail.findDdpCategorizedDetail(Integer cadId) {
        if (cadId == null) return null;
        return entityManager().find(DdpCategorizedDetail.class, cadId);
    }
    
    public static List<DdpCategorizedDetail> DdpCategorizedDetail.findDdpCategorizedDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DdpCategorizedDetail o", DdpCategorizedDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DdpCategorizedDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DdpCategorizedDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DdpCategorizedDetail attached = DdpCategorizedDetail.findDdpCategorizedDetail(this.cadId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DdpCategorizedDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DdpCategorizedDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DdpCategorizedDetail DdpCategorizedDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DdpCategorizedDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
