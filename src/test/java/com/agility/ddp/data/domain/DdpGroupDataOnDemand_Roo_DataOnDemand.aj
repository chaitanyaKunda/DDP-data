// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpGroup;
import com.agility.ddp.data.domain.DdpGroupDataOnDemand;
import com.agility.ddp.data.domain.DdpGroupRepository;
import com.agility.ddp.data.domain.DdpGroupService;
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

privileged aspect DdpGroupDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpGroupDataOnDemand: @Component;
    
    private Random DdpGroupDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpGroup> DdpGroupDataOnDemand.data;
    
    @Autowired
    DdpGroupService DdpGroupDataOnDemand.ddpGroupService;
    
    @Autowired
    DdpGroupRepository DdpGroupDataOnDemand.ddpGroupRepository;
    
    public DdpGroup DdpGroupDataOnDemand.getNewTransientDdpGroup(int index) {
        DdpGroup obj = new DdpGroup();
        setGrpCreatedBy(obj, index);
        setGrpCreatedDate(obj, index);
        setGrpDescription(obj, index);
        setGrpDisplayName(obj, index);
        setGrpModifiedBy(obj, index);
        setGrpModifiedDate(obj, index);
        setGrpName(obj, index);
        setGrpStatus(obj, index);
        return obj;
    }
    
    public void DdpGroupDataOnDemand.setGrpCreatedBy(DdpGroup obj, int index) {
        String grpCreatedBy = "grpCreatedBy_" + index;
        if (grpCreatedBy.length() > 120) {
            grpCreatedBy = grpCreatedBy.substring(0, 120);
        }
        obj.setGrpCreatedBy(grpCreatedBy);
    }
    
    public void DdpGroupDataOnDemand.setGrpCreatedDate(DdpGroup obj, int index) {
        Calendar grpCreatedDate = Calendar.getInstance();
        obj.setGrpCreatedDate(grpCreatedDate);
    }
    
    public void DdpGroupDataOnDemand.setGrpDescription(DdpGroup obj, int index) {
        String grpDescription = "grpDescription_" + index;
        if (grpDescription.length() > 256) {
            grpDescription = grpDescription.substring(0, 256);
        }
        obj.setGrpDescription(grpDescription);
    }
    
    public void DdpGroupDataOnDemand.setGrpDisplayName(DdpGroup obj, int index) {
        String grpDisplayName = "grpDisplayName_" + index;
        if (grpDisplayName.length() > 128) {
            grpDisplayName = grpDisplayName.substring(0, 128);
        }
        obj.setGrpDisplayName(grpDisplayName);
    }
    
    public void DdpGroupDataOnDemand.setGrpModifiedBy(DdpGroup obj, int index) {
        String grpModifiedBy = "grpModifiedBy_" + index;
        if (grpModifiedBy.length() > 120) {
            grpModifiedBy = grpModifiedBy.substring(0, 120);
        }
        obj.setGrpModifiedBy(grpModifiedBy);
    }
    
    public void DdpGroupDataOnDemand.setGrpModifiedDate(DdpGroup obj, int index) {
        Calendar grpModifiedDate = Calendar.getInstance();
        obj.setGrpModifiedDate(grpModifiedDate);
    }
    
    public void DdpGroupDataOnDemand.setGrpName(DdpGroup obj, int index) {
        String grpName = "grpName_" + index;
        if (grpName.length() > 32) {
            grpName = grpName.substring(0, 32);
        }
        obj.setGrpName(grpName);
    }
    
    public void DdpGroupDataOnDemand.setGrpStatus(DdpGroup obj, int index) {
        Integer grpStatus = new Integer(index);
        obj.setGrpStatus(grpStatus);
    }
    
    public DdpGroup DdpGroupDataOnDemand.getSpecificDdpGroup(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpGroup obj = data.get(index);
        Integer id = obj.getGrpId();
        return ddpGroupService.findDdpGroup(id);
    }
    
    public DdpGroup DdpGroupDataOnDemand.getRandomDdpGroup() {
        init();
        DdpGroup obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getGrpId();
        return ddpGroupService.findDdpGroup(id);
    }
    
    public boolean DdpGroupDataOnDemand.modifyDdpGroup(DdpGroup obj) {
        return false;
    }
    
    public void DdpGroupDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpGroupService.findDdpGroupEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpGroup' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpGroup>();
        for (int i = 0; i < 10; i++) {
            DdpGroup obj = getNewTransientDdpGroup(i);
            try {
                ddpGroupService.saveDdpGroup(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpGroupRepository.flush();
            data.add(obj);
        }
    }
    
}
