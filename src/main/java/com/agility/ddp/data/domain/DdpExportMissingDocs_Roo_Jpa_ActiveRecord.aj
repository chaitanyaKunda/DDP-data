// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportMissingDocs;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpExportMissingDocs_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DdpExportMissingDocs.entityManager;
    
    public static final EntityManager DdpExportMissingDocs.entityManager() {
        EntityManager em = new DdpExportMissingDocs().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DdpExportMissingDocs.countDdpExportMissingDocses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DdpExportMissingDocs o", Long.class).getSingleResult();
    }
    
    public static List<DdpExportMissingDocs> DdpExportMissingDocs.findAllDdpExportMissingDocses() {
        return entityManager().createQuery("SELECT o FROM DdpExportMissingDocs o", DdpExportMissingDocs.class).getResultList();
    }
    
    public static DdpExportMissingDocs DdpExportMissingDocs.findDdpExportMissingDocs(Integer misId) {
        if (misId == null) return null;
        return entityManager().find(DdpExportMissingDocs.class, misId);
    }
    
    public static List<DdpExportMissingDocs> DdpExportMissingDocs.findDdpExportMissingDocsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DdpExportMissingDocs o", DdpExportMissingDocs.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DdpExportMissingDocs.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DdpExportMissingDocs.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DdpExportMissingDocs attached = DdpExportMissingDocs.findDdpExportMissingDocs(this.misId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DdpExportMissingDocs.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DdpExportMissingDocs.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DdpExportMissingDocs DdpExportMissingDocs.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DdpExportMissingDocs merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
