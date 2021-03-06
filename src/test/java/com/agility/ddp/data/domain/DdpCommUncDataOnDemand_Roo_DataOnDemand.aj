// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommUnc;
import com.agility.ddp.data.domain.DdpCommUncDataOnDemand;
import com.agility.ddp.data.domain.DdpCommUncRepository;
import com.agility.ddp.data.domain.DdpCommUncService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpCommUncDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpCommUncDataOnDemand: @Component;
    
    private Random DdpCommUncDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpCommUnc> DdpCommUncDataOnDemand.data;
    
    @Autowired
    DdpCommUncService DdpCommUncDataOnDemand.ddpCommUncService;
    
    @Autowired
    DdpCommUncRepository DdpCommUncDataOnDemand.ddpCommUncRepository;
    
    public DdpCommUnc DdpCommUncDataOnDemand.getNewTransientDdpCommUnc(int index) {
        DdpCommUnc obj = new DdpCommUnc();
        setCunUncPassword(obj, index);
        setCunUncPath(obj, index);
        setCunUncUserName(obj, index);
        return obj;
    }
    
    public void DdpCommUncDataOnDemand.setCunUncPassword(DdpCommUnc obj, int index) {
        String cunUncPassword = "cunUncPassword_" + index;
        if (cunUncPassword.length() > 120) {
            cunUncPassword = cunUncPassword.substring(0, 120);
        }
        obj.setCunUncPassword(cunUncPassword);
    }
    
    public void DdpCommUncDataOnDemand.setCunUncPath(DdpCommUnc obj, int index) {
        String cunUncPath = "cunUncPath_" + index;
        if (cunUncPath.length() > 120) {
            cunUncPath = cunUncPath.substring(0, 120);
        }
        obj.setCunUncPath(cunUncPath);
    }
    
    public void DdpCommUncDataOnDemand.setCunUncUserName(DdpCommUnc obj, int index) {
        String cunUncUserName = "cunUncUserName_" + index;
        if (cunUncUserName.length() > 120) {
            cunUncUserName = cunUncUserName.substring(0, 120);
        }
        obj.setCunUncUserName(cunUncUserName);
    }
    
    public DdpCommUnc DdpCommUncDataOnDemand.getSpecificDdpCommUnc(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpCommUnc obj = data.get(index);
        Long id = obj.getCunUncId();
        return ddpCommUncService.findDdpCommUnc(id);
    }
    
    public DdpCommUnc DdpCommUncDataOnDemand.getRandomDdpCommUnc() {
        init();
        DdpCommUnc obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getCunUncId();
        return ddpCommUncService.findDdpCommUnc(id);
    }
    
    public boolean DdpCommUncDataOnDemand.modifyDdpCommUnc(DdpCommUnc obj) {
        return false;
    }
    
    public void DdpCommUncDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpCommUncService.findDdpCommUncEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpCommUnc' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpCommUnc>();
        for (int i = 0; i < 10; i++) {
            DdpCommUnc obj = getNewTransientDdpCommUnc(i);
            try {
                ddpCommUncService.saveDdpCommUnc(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpCommUncRepository.flush();
            data.add(obj);
        }
    }
    
}
