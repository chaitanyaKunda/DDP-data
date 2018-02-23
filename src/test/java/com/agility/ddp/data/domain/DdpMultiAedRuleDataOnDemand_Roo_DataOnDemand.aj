// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommunicationSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpCompressionSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpDocnameConvDataOnDemand;
import com.agility.ddp.data.domain.DdpMergeSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpMultiAedRule;
import com.agility.ddp.data.domain.DdpMultiAedRuleDataOnDemand;
import com.agility.ddp.data.domain.DdpMultiAedRuleRepository;
import com.agility.ddp.data.domain.DdpMultiAedRuleService;
import com.agility.ddp.data.domain.DdpNotificationDataOnDemand;
import com.agility.ddp.data.domain.DdpRule;
import com.agility.ddp.data.domain.DdpRuleDataOnDemand;
import com.agility.ddp.data.domain.DdpSchedulerDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpMultiAedRuleDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpMultiAedRuleDataOnDemand: @Component;
    
    private Random DdpMultiAedRuleDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpMultiAedRule> DdpMultiAedRuleDataOnDemand.data;
    
    @Autowired
    DdpRuleDataOnDemand DdpMultiAedRuleDataOnDemand.ddpRuleDataOnDemand;
    
    @Autowired
    DdpCommunicationSetupDataOnDemand DdpMultiAedRuleDataOnDemand.ddpCommunicationSetupDataOnDemand;
    
    @Autowired
    DdpCompressionSetupDataOnDemand DdpMultiAedRuleDataOnDemand.ddpCompressionSetupDataOnDemand;
    
    @Autowired
    DdpDocnameConvDataOnDemand DdpMultiAedRuleDataOnDemand.ddpDocnameConvDataOnDemand;
    
    @Autowired
    DdpMergeSetupDataOnDemand DdpMultiAedRuleDataOnDemand.ddpMergeSetupDataOnDemand;
    
    @Autowired
    DdpNotificationDataOnDemand DdpMultiAedRuleDataOnDemand.ddpNotificationDataOnDemand;
    
    @Autowired
    DdpSchedulerDataOnDemand DdpMultiAedRuleDataOnDemand.ddpSchedulerDataOnDemand;
    
    @Autowired
    DdpMultiAedRuleService DdpMultiAedRuleDataOnDemand.ddpMultiAedRuleService;
    
    @Autowired
    DdpMultiAedRuleRepository DdpMultiAedRuleDataOnDemand.ddpMultiAedRuleRepository;
    
    public DdpMultiAedRule DdpMultiAedRuleDataOnDemand.getNewTransientDdpMultiAedRule(int index) {
        DdpMultiAedRule obj = new DdpMultiAedRule();
        setDdpRule(obj, index);
        setMaedActivationDate(obj, index);
        setMaedCreatedBy(obj, index);
        setMaedCreatedDate(obj, index);
        setMaedIsPartyCheckRequired(obj, index);
        setMaedModifiedBy(obj, index);
        setMaedModifiedDate(obj, index);
        setMaedPropFile(obj, index);
        setMaedPropInUse(obj, index);
        setMaedPropTable(obj, index);
        setMaedStatus(obj, index);
        return obj;
    }
    
    public void DdpMultiAedRuleDataOnDemand.setDdpRule(DdpMultiAedRule obj, int index) {
        DdpRule ddpRule = ddpRuleDataOnDemand.getSpecificDdpRule(index);
        obj.setDdpRule(ddpRule);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedActivationDate(DdpMultiAedRule obj, int index) {
        Calendar maedActivationDate = Calendar.getInstance();
        obj.setMaedActivationDate(maedActivationDate);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedCreatedBy(DdpMultiAedRule obj, int index) {
        String maedCreatedBy = "maedCreatedBy_" + index;
        if (maedCreatedBy.length() > 120) {
            maedCreatedBy = maedCreatedBy.substring(0, 120);
        }
        obj.setMaedCreatedBy(maedCreatedBy);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedCreatedDate(DdpMultiAedRule obj, int index) {
        Calendar maedCreatedDate = Calendar.getInstance();
        obj.setMaedCreatedDate(maedCreatedDate);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedIsPartyCheckRequired(DdpMultiAedRule obj, int index) {
        Integer maedIsPartyCheckRequired = new Integer(index);
        obj.setMaedIsPartyCheckRequired(maedIsPartyCheckRequired);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedModifiedBy(DdpMultiAedRule obj, int index) {
        String maedModifiedBy = "maedModifiedBy_" + index;
        if (maedModifiedBy.length() > 120) {
            maedModifiedBy = maedModifiedBy.substring(0, 120);
        }
        obj.setMaedModifiedBy(maedModifiedBy);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedModifiedDate(DdpMultiAedRule obj, int index) {
        Calendar maedModifiedDate = Calendar.getInstance();
        obj.setMaedModifiedDate(maedModifiedDate);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedPropFile(DdpMultiAedRule obj, int index) {
        String maedPropFile = "maedPropFile_" + index;
        if (maedPropFile.length() > 120) {
            maedPropFile = maedPropFile.substring(0, 120);
        }
        obj.setMaedPropFile(maedPropFile);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedPropInUse(DdpMultiAedRule obj, int index) {
        String maedPropInUse = "maedPropInUse_" + index;
        if (maedPropInUse.length() > 45) {
            maedPropInUse = maedPropInUse.substring(0, 45);
        }
        obj.setMaedPropInUse(maedPropInUse);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedPropTable(DdpMultiAedRule obj, int index) {
        String maedPropTable = "maedPropTable_" + index;
        if (maedPropTable.length() > 45) {
            maedPropTable = maedPropTable.substring(0, 45);
        }
        obj.setMaedPropTable(maedPropTable);
    }
    
    public void DdpMultiAedRuleDataOnDemand.setMaedStatus(DdpMultiAedRule obj, int index) {
        Integer maedStatus = new Integer(index);
        obj.setMaedStatus(maedStatus);
    }
    
    public DdpMultiAedRule DdpMultiAedRuleDataOnDemand.getSpecificDdpMultiAedRule(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpMultiAedRule obj = data.get(index);
        Integer id = obj.getMaedRuleId();
        return ddpMultiAedRuleService.findDdpMultiAedRule(id);
    }
    
    public DdpMultiAedRule DdpMultiAedRuleDataOnDemand.getRandomDdpMultiAedRule() {
        init();
        DdpMultiAedRule obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getMaedRuleId();
        return ddpMultiAedRuleService.findDdpMultiAedRule(id);
    }
    
    public boolean DdpMultiAedRuleDataOnDemand.modifyDdpMultiAedRule(DdpMultiAedRule obj) {
        return false;
    }
    
    public void DdpMultiAedRuleDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpMultiAedRuleService.findDdpMultiAedRuleEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpMultiAedRule' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpMultiAedRule>();
        for (int i = 0; i < 10; i++) {
            DdpMultiAedRule obj = getNewTransientDdpMultiAedRule(i);
            try {
                ddpMultiAedRuleService.saveDdpMultiAedRule(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpMultiAedRuleRepository.flush();
            data.add(obj);
        }
    }
    
}
