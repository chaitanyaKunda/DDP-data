// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRateSetup;
import com.agility.ddp.data.domain.DdpRateSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpRateSetupRepository;
import com.agility.ddp.data.domain.DdpRateSetupService;
import com.agility.ddp.data.domain.DdpRuleDetail;
import com.agility.ddp.data.domain.DdpRuleDetailDataOnDemand;
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

privileged aspect DdpRateSetupDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpRateSetupDataOnDemand: @Component;
    
    private Random DdpRateSetupDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpRateSetup> DdpRateSetupDataOnDemand.data;
    
    @Autowired
    DdpRuleDetailDataOnDemand DdpRateSetupDataOnDemand.ddpRuleDetailDataOnDemand;
    
    @Autowired
    DdpRateSetupService DdpRateSetupDataOnDemand.ddpRateSetupService;
    
    @Autowired
    DdpRateSetupRepository DdpRateSetupDataOnDemand.ddpRateSetupRepository;
    
    public DdpRateSetup DdpRateSetupDataOnDemand.getNewTransientDdpRateSetup(int index) {
        DdpRateSetup obj = new DdpRateSetup();
        setRtsCreatedBy(obj, index);
        setRtsCreatedDate(obj, index);
        setRtsModifiedBy(obj, index);
        setRtsModifiedDate(obj, index);
        setRtsOption(obj, index);
        setRtsRdtId(obj, index);
        return obj;
    }
    
    public void DdpRateSetupDataOnDemand.setRtsCreatedBy(DdpRateSetup obj, int index) {
        String rtsCreatedBy = "rtsCreatedBy_" + index;
        if (rtsCreatedBy.length() > 120) {
            rtsCreatedBy = rtsCreatedBy.substring(0, 120);
        }
        obj.setRtsCreatedBy(rtsCreatedBy);
    }
    
    public void DdpRateSetupDataOnDemand.setRtsCreatedDate(DdpRateSetup obj, int index) {
        Calendar rtsCreatedDate = Calendar.getInstance();
        obj.setRtsCreatedDate(rtsCreatedDate);
    }
    
    public void DdpRateSetupDataOnDemand.setRtsModifiedBy(DdpRateSetup obj, int index) {
        String rtsModifiedBy = "rtsModifiedBy_" + index;
        if (rtsModifiedBy.length() > 120) {
            rtsModifiedBy = rtsModifiedBy.substring(0, 120);
        }
        obj.setRtsModifiedBy(rtsModifiedBy);
    }
    
    public void DdpRateSetupDataOnDemand.setRtsModifiedDate(DdpRateSetup obj, int index) {
        Calendar rtsModifiedDate = Calendar.getInstance();
        obj.setRtsModifiedDate(rtsModifiedDate);
    }
    
    public void DdpRateSetupDataOnDemand.setRtsOption(DdpRateSetup obj, int index) {
        String rtsOption = "rtsOptio_" + index;
        if (rtsOption.length() > 10) {
            rtsOption = rtsOption.substring(0, 10);
        }
        obj.setRtsOption(rtsOption);
    }
    
    public void DdpRateSetupDataOnDemand.setRtsRdtId(DdpRateSetup obj, int index) {
        DdpRuleDetail rtsRdtId = ddpRuleDetailDataOnDemand.getRandomDdpRuleDetail();
        obj.setRtsRdtId(rtsRdtId);
    }
    
    public DdpRateSetup DdpRateSetupDataOnDemand.getSpecificDdpRateSetup(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpRateSetup obj = data.get(index);
        Integer id = obj.getRtsId();
        return ddpRateSetupService.findDdpRateSetup(id);
    }
    
    public DdpRateSetup DdpRateSetupDataOnDemand.getRandomDdpRateSetup() {
        init();
        DdpRateSetup obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getRtsId();
        return ddpRateSetupService.findDdpRateSetup(id);
    }
    
    public boolean DdpRateSetupDataOnDemand.modifyDdpRateSetup(DdpRateSetup obj) {
        return false;
    }
    
    public void DdpRateSetupDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpRateSetupService.findDdpRateSetupEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpRateSetup' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpRateSetup>();
        for (int i = 0; i < 10; i++) {
            DdpRateSetup obj = getNewTransientDdpRateSetup(i);
            try {
                ddpRateSetupService.saveDdpRateSetup(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpRateSetupRepository.flush();
            data.add(obj);
        }
    }
    
}