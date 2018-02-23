// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpPmService;
import com.agility.ddp.data.domain.DdpPmServiceDataOnDemand;
import com.agility.ddp.data.domain.DdpRule;
import com.agility.ddp.data.domain.DdpRuleDataOnDemand;
import com.agility.ddp.data.domain.DdpRulePmSvc;
import com.agility.ddp.data.domain.DdpRulePmSvcDataOnDemand;
import com.agility.ddp.data.domain.DdpRulePmSvcRepository;
import com.agility.ddp.data.domain.DdpRulePmSvcService;
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

privileged aspect DdpRulePmSvcDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpRulePmSvcDataOnDemand: @Component;
    
    private Random DdpRulePmSvcDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpRulePmSvc> DdpRulePmSvcDataOnDemand.data;
    
    @Autowired
    DdpPmServiceDataOnDemand DdpRulePmSvcDataOnDemand.ddpPmServiceDataOnDemand;
    
    @Autowired
    DdpRuleDataOnDemand DdpRulePmSvcDataOnDemand.ddpRuleDataOnDemand;
    
    @Autowired
    DdpRulePmSvcService DdpRulePmSvcDataOnDemand.ddpRulePmSvcService;
    
    @Autowired
    DdpRulePmSvcRepository DdpRulePmSvcDataOnDemand.ddpRulePmSvcRepository;
    
    public DdpRulePmSvc DdpRulePmSvcDataOnDemand.getNewTransientDdpRulePmSvc(int index) {
        DdpRulePmSvc obj = new DdpRulePmSvc();
        setRpsCreatedBy(obj, index);
        setRpsCreatedDate(obj, index);
        setRpsModifiedBy(obj, index);
        setRpsModifiedDate(obj, index);
        setRpsNotificationId(obj, index);
        setRpsPsrId(obj, index);
        setRpsRuleId(obj, index);
        setRpsSeq(obj, index);
        setRpsStatus(obj, index);
        return obj;
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsCreatedBy(DdpRulePmSvc obj, int index) {
        String rpsCreatedBy = "rpsCreatedBy_" + index;
        if (rpsCreatedBy.length() > 120) {
            rpsCreatedBy = rpsCreatedBy.substring(0, 120);
        }
        obj.setRpsCreatedBy(rpsCreatedBy);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsCreatedDate(DdpRulePmSvc obj, int index) {
        Calendar rpsCreatedDate = Calendar.getInstance();
        obj.setRpsCreatedDate(rpsCreatedDate);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsModifiedBy(DdpRulePmSvc obj, int index) {
        String rpsModifiedBy = "rpsModifiedBy_" + index;
        if (rpsModifiedBy.length() > 120) {
            rpsModifiedBy = rpsModifiedBy.substring(0, 120);
        }
        obj.setRpsModifiedBy(rpsModifiedBy);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsModifiedDate(DdpRulePmSvc obj, int index) {
        Calendar rpsModifiedDate = Calendar.getInstance();
        obj.setRpsModifiedDate(rpsModifiedDate);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsNotificationId(DdpRulePmSvc obj, int index) {
        Integer rpsNotificationId = new Integer(index);
        obj.setRpsNotificationId(rpsNotificationId);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsPsrId(DdpRulePmSvc obj, int index) {
        DdpPmService rpsPsrId = ddpPmServiceDataOnDemand.getRandomDdpPmService();
        obj.setRpsPsrId(rpsPsrId);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsRuleId(DdpRulePmSvc obj, int index) {
        DdpRule rpsRuleId = ddpRuleDataOnDemand.getRandomDdpRule();
        obj.setRpsRuleId(rpsRuleId);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsSeq(DdpRulePmSvc obj, int index) {
        Integer rpsSeq = new Integer(index);
        obj.setRpsSeq(rpsSeq);
    }
    
    public void DdpRulePmSvcDataOnDemand.setRpsStatus(DdpRulePmSvc obj, int index) {
        Integer rpsStatus = new Integer(index);
        obj.setRpsStatus(rpsStatus);
    }
    
    public DdpRulePmSvc DdpRulePmSvcDataOnDemand.getSpecificDdpRulePmSvc(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpRulePmSvc obj = data.get(index);
        Integer id = obj.getRpsId();
        return ddpRulePmSvcService.findDdpRulePmSvc(id);
    }
    
    public DdpRulePmSvc DdpRulePmSvcDataOnDemand.getRandomDdpRulePmSvc() {
        init();
        DdpRulePmSvc obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getRpsId();
        return ddpRulePmSvcService.findDdpRulePmSvc(id);
    }
    
    public boolean DdpRulePmSvcDataOnDemand.modifyDdpRulePmSvc(DdpRulePmSvc obj) {
        return false;
    }
    
    public void DdpRulePmSvcDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpRulePmSvcService.findDdpRulePmSvcEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpRulePmSvc' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpRulePmSvc>();
        for (int i = 0; i < 10; i++) {
            DdpRulePmSvc obj = getNewTransientDdpRulePmSvc(i);
            try {
                ddpRulePmSvcService.saveDdpRulePmSvc(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpRulePmSvcRepository.flush();
            data.add(obj);
        }
    }
    
}