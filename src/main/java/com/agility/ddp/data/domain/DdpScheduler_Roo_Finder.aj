// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpAedRule;
import com.agility.ddp.data.domain.DdpExportRule;
import com.agility.ddp.data.domain.DdpRuleDetail;
import com.agility.ddp.data.domain.DdpScheduler;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect DdpScheduler_Roo_Finder {
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersByDdpAedRules(Set<DdpAedRule> ddpAedRules) {
        if (ddpAedRules == null) throw new IllegalArgumentException("The ddpAedRules argument is required");
        EntityManager em = DdpScheduler.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM DdpScheduler AS o WHERE");
        for (int i = 0; i < ddpAedRules.size(); i++) {
            if (i > 0) queryBuilder.append(" AND");
            queryBuilder.append(" :ddpAedRules_item").append(i).append(" MEMBER OF o.ddpAedRules");
        }
        TypedQuery<DdpScheduler> q = em.createQuery(queryBuilder.toString(), DdpScheduler.class);
        int ddpAedRulesIndex = 0;
        for (DdpAedRule _ddpaedrule: ddpAedRules) {
            q.setParameter("ddpAedRules_item" + ddpAedRulesIndex++, _ddpaedrule);
        }
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersByDdpExportRules(Set<DdpExportRule> ddpExportRules) {
        if (ddpExportRules == null) throw new IllegalArgumentException("The ddpExportRules argument is required");
        EntityManager em = DdpScheduler.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM DdpScheduler AS o WHERE");
        for (int i = 0; i < ddpExportRules.size(); i++) {
            if (i > 0) queryBuilder.append(" AND");
            queryBuilder.append(" :ddpExportRules_item").append(i).append(" MEMBER OF o.ddpExportRules");
        }
        TypedQuery<DdpScheduler> q = em.createQuery(queryBuilder.toString(), DdpScheduler.class);
        int ddpExportRulesIndex = 0;
        for (DdpExportRule _ddpexportrule: ddpExportRules) {
            q.setParameter("ddpExportRules_item" + ddpExportRulesIndex++, _ddpexportrule);
        }
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersByDdpRuleDetails(Set<DdpRuleDetail> ddpRuleDetails) {
        if (ddpRuleDetails == null) throw new IllegalArgumentException("The ddpRuleDetails argument is required");
        EntityManager em = DdpScheduler.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM DdpScheduler AS o WHERE");
        for (int i = 0; i < ddpRuleDetails.size(); i++) {
            if (i > 0) queryBuilder.append(" AND");
            queryBuilder.append(" :ddpRuleDetails_item").append(i).append(" MEMBER OF o.ddpRuleDetails");
        }
        TypedQuery<DdpScheduler> q = em.createQuery(queryBuilder.toString(), DdpScheduler.class);
        int ddpRuleDetailsIndex = 0;
        for (DdpRuleDetail _ddpruledetail: ddpRuleDetails) {
            q.setParameter("ddpRuleDetails_item" + ddpRuleDetailsIndex++, _ddpruledetail);
        }
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchCreatedDateBetween(Calendar minSchCreatedDate, Calendar maxSchCreatedDate) {
        if (minSchCreatedDate == null) throw new IllegalArgumentException("The minSchCreatedDate argument is required");
        if (maxSchCreatedDate == null) throw new IllegalArgumentException("The maxSchCreatedDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schCreatedDate BETWEEN :minSchCreatedDate AND :maxSchCreatedDate", DdpScheduler.class);
        q.setParameter("minSchCreatedDate", minSchCreatedDate);
        q.setParameter("maxSchCreatedDate", maxSchCreatedDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchCreatedDateEquals(Calendar schCreatedDate) {
        if (schCreatedDate == null) throw new IllegalArgumentException("The schCreatedDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schCreatedDate = :schCreatedDate", DdpScheduler.class);
        q.setParameter("schCreatedDate", schCreatedDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchCronExpressionsEquals(String schCronExpressions) {
        if (schCronExpressions == null || schCronExpressions.length() == 0) throw new IllegalArgumentException("The schCronExpressions argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schCronExpressions = :schCronExpressions", DdpScheduler.class);
        q.setParameter("schCronExpressions", schCronExpressions);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchEndDateBetween(Calendar minSchEndDate, Calendar maxSchEndDate) {
        if (minSchEndDate == null) throw new IllegalArgumentException("The minSchEndDate argument is required");
        if (maxSchEndDate == null) throw new IllegalArgumentException("The maxSchEndDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schEndDate BETWEEN :minSchEndDate AND :maxSchEndDate", DdpScheduler.class);
        q.setParameter("minSchEndDate", minSchEndDate);
        q.setParameter("maxSchEndDate", maxSchEndDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchEndDateEquals(Calendar schEndDate) {
        if (schEndDate == null) throw new IllegalArgumentException("The schEndDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schEndDate = :schEndDate", DdpScheduler.class);
        q.setParameter("schEndDate", schEndDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchFailedCountEquals(Integer schFailedCount) {
        if (schFailedCount == null) throw new IllegalArgumentException("The schFailedCount argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schFailedCount = :schFailedCount", DdpScheduler.class);
        q.setParameter("schFailedCount", schFailedCount);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchIsRunningEquals(Integer schIsRunning) {
        if (schIsRunning == null) throw new IllegalArgumentException("The schIsRunning argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schIsRunning = :schIsRunning", DdpScheduler.class);
        q.setParameter("schIsRunning", schIsRunning);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastFailedRunBetween(Calendar minSchLastFailedRun, Calendar maxSchLastFailedRun) {
        if (minSchLastFailedRun == null) throw new IllegalArgumentException("The minSchLastFailedRun argument is required");
        if (maxSchLastFailedRun == null) throw new IllegalArgumentException("The maxSchLastFailedRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastFailedRun BETWEEN :minSchLastFailedRun AND :maxSchLastFailedRun", DdpScheduler.class);
        q.setParameter("minSchLastFailedRun", minSchLastFailedRun);
        q.setParameter("maxSchLastFailedRun", maxSchLastFailedRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastFailedRunEquals(Calendar schLastFailedRun) {
        if (schLastFailedRun == null) throw new IllegalArgumentException("The schLastFailedRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastFailedRun = :schLastFailedRun", DdpScheduler.class);
        q.setParameter("schLastFailedRun", schLastFailedRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastRunBetween(Calendar minSchLastRun, Calendar maxSchLastRun) {
        if (minSchLastRun == null) throw new IllegalArgumentException("The minSchLastRun argument is required");
        if (maxSchLastRun == null) throw new IllegalArgumentException("The maxSchLastRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastRun BETWEEN :minSchLastRun AND :maxSchLastRun", DdpScheduler.class);
        q.setParameter("minSchLastRun", minSchLastRun);
        q.setParameter("maxSchLastRun", maxSchLastRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastRunEquals(Calendar schLastRun) {
        if (schLastRun == null) throw new IllegalArgumentException("The schLastRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastRun = :schLastRun", DdpScheduler.class);
        q.setParameter("schLastRun", schLastRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastRunStatusEquals(String schLastRunStatus) {
        if (schLastRunStatus == null || schLastRunStatus.length() == 0) throw new IllegalArgumentException("The schLastRunStatus argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastRunStatus = :schLastRunStatus", DdpScheduler.class);
        q.setParameter("schLastRunStatus", schLastRunStatus);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastSuccessRunBetween(Calendar minSchLastSuccessRun, Calendar maxSchLastSuccessRun) {
        if (minSchLastSuccessRun == null) throw new IllegalArgumentException("The minSchLastSuccessRun argument is required");
        if (maxSchLastSuccessRun == null) throw new IllegalArgumentException("The maxSchLastSuccessRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastSuccessRun BETWEEN :minSchLastSuccessRun AND :maxSchLastSuccessRun", DdpScheduler.class);
        q.setParameter("minSchLastSuccessRun", minSchLastSuccessRun);
        q.setParameter("maxSchLastSuccessRun", maxSchLastSuccessRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchLastSuccessRunEquals(Calendar schLastSuccessRun) {
        if (schLastSuccessRun == null) throw new IllegalArgumentException("The schLastSuccessRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schLastSuccessRun = :schLastSuccessRun", DdpScheduler.class);
        q.setParameter("schLastSuccessRun", schLastSuccessRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchModifiedDateEquals(Calendar schModifiedDate) {
        if (schModifiedDate == null) throw new IllegalArgumentException("The schModifiedDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schModifiedDate = :schModifiedDate", DdpScheduler.class);
        q.setParameter("schModifiedDate", schModifiedDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchNextRunBetween(Calendar minSchNextRun, Calendar maxSchNextRun) {
        if (minSchNextRun == null) throw new IllegalArgumentException("The minSchNextRun argument is required");
        if (maxSchNextRun == null) throw new IllegalArgumentException("The maxSchNextRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schNextRun BETWEEN :minSchNextRun AND :maxSchNextRun", DdpScheduler.class);
        q.setParameter("minSchNextRun", minSchNextRun);
        q.setParameter("maxSchNextRun", maxSchNextRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchNextRunEquals(Calendar schNextRun) {
        if (schNextRun == null) throw new IllegalArgumentException("The schNextRun argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schNextRun = :schNextRun", DdpScheduler.class);
        q.setParameter("schNextRun", schNextRun);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchNotificationIdEquals(Integer schNotificationId) {
        if (schNotificationId == null) throw new IllegalArgumentException("The schNotificationId argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schNotificationId = :schNotificationId", DdpScheduler.class);
        q.setParameter("schNotificationId", schNotificationId);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchProcessingStatusEquals(Integer schProcessingStatus) {
        if (schProcessingStatus == null) throw new IllegalArgumentException("The schProcessingStatus argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schProcessingStatus = :schProcessingStatus", DdpScheduler.class);
        q.setParameter("schProcessingStatus", schProcessingStatus);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchRepeatCountEquals(String schRepeatCount) {
        if (schRepeatCount == null || schRepeatCount.length() == 0) throw new IllegalArgumentException("The schRepeatCount argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schRepeatCount = :schRepeatCount", DdpScheduler.class);
        q.setParameter("schRepeatCount", schRepeatCount);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchRuleCategoryEquals(String schRuleCategory) {
        if (schRuleCategory == null || schRuleCategory.length() == 0) throw new IllegalArgumentException("The schRuleCategory argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schRuleCategory = :schRuleCategory", DdpScheduler.class);
        q.setParameter("schRuleCategory", schRuleCategory);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchRuleTypeEquals(String schRuleType) {
        if (schRuleType == null || schRuleType.length() == 0) throw new IllegalArgumentException("The schRuleType argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schRuleType = :schRuleType", DdpScheduler.class);
        q.setParameter("schRuleType", schRuleType);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchStartDateBetween(Calendar minSchStartDate, Calendar maxSchStartDate) {
        if (minSchStartDate == null) throw new IllegalArgumentException("The minSchStartDate argument is required");
        if (maxSchStartDate == null) throw new IllegalArgumentException("The maxSchStartDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schStartDate BETWEEN :minSchStartDate AND :maxSchStartDate", DdpScheduler.class);
        q.setParameter("minSchStartDate", minSchStartDate);
        q.setParameter("maxSchStartDate", maxSchStartDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchStartDateEquals(Calendar schStartDate) {
        if (schStartDate == null) throw new IllegalArgumentException("The schStartDate argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schStartDate = :schStartDate", DdpScheduler.class);
        q.setParameter("schStartDate", schStartDate);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchStatusEquals(Integer schStatus) {
        if (schStatus == null) throw new IllegalArgumentException("The schStatus argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schStatus = :schStatus", DdpScheduler.class);
        q.setParameter("schStatus", schStatus);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchSuccessCountEquals(Integer schSuccessCount) {
        if (schSuccessCount == null) throw new IllegalArgumentException("The schSuccessCount argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schSuccessCount = :schSuccessCount", DdpScheduler.class);
        q.setParameter("schSuccessCount", schSuccessCount);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchTimeIntervalEquals(String schTimeInterval) {
        if (schTimeInterval == null || schTimeInterval.length() == 0) throw new IllegalArgumentException("The schTimeInterval argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schTimeInterval = :schTimeInterval", DdpScheduler.class);
        q.setParameter("schTimeInterval", schTimeInterval);
        return q;
    }
    
    public static TypedQuery<DdpScheduler> DdpScheduler.findDdpSchedulersBySchTypeEquals(String schType) {
        if (schType == null || schType.length() == 0) throw new IllegalArgumentException("The schType argument is required");
        EntityManager em = DdpScheduler.entityManager();
        TypedQuery<DdpScheduler> q = em.createQuery("SELECT o FROM DdpScheduler AS o WHERE o.schType = :schType", DdpScheduler.class);
        q.setParameter("schType", schType);
        return q;
    }
    
}
