// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpParty;
import com.agility.ddp.data.domain.DdpPartyDataOnDemand;
import com.agility.ddp.data.domain.DdpPartyRepository;
import com.agility.ddp.data.domain.DdpPartyService;
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

privileged aspect DdpPartyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpPartyDataOnDemand: @Component;
    
    private Random DdpPartyDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpParty> DdpPartyDataOnDemand.data;
    
    @Autowired
    DdpPartyService DdpPartyDataOnDemand.ddpPartyService;
    
    @Autowired
    DdpPartyRepository DdpPartyDataOnDemand.ddpPartyRepository;
    
    public DdpParty DdpPartyDataOnDemand.getNewTransientDdpParty(int index) {
        DdpParty obj = new DdpParty();
        setPtyApplicationCode(obj, index);
        setPtyCompanyCode(obj, index);
        setPtyCreatedBy(obj, index);
        setPtyCreatedDate(obj, index);
        setPtyModifiedBy(obj, index);
        setPtyModifiedDate(obj, index);
        setPtyPartyName(obj, index);
        setPtyStatus(obj, index);
        return obj;
    }
    
    public void DdpPartyDataOnDemand.setPtyApplicationCode(DdpParty obj, int index) {
        String ptyApplicationCode = "ptyApplication_" + index;
        if (ptyApplicationCode.length() > 16) {
            ptyApplicationCode = ptyApplicationCode.substring(0, 16);
        }
        obj.setPtyApplicationCode(ptyApplicationCode);
    }
    
    public void DdpPartyDataOnDemand.setPtyCompanyCode(DdpParty obj, int index) {
        String ptyCompanyCode = "p_" + index;
        if (ptyCompanyCode.length() > 3) {
            ptyCompanyCode = ptyCompanyCode.substring(0, 3);
        }
        obj.setPtyCompanyCode(ptyCompanyCode);
    }
    
    public void DdpPartyDataOnDemand.setPtyCreatedBy(DdpParty obj, int index) {
        String ptyCreatedBy = "ptyCreatedBy_" + index;
        if (ptyCreatedBy.length() > 120) {
            ptyCreatedBy = ptyCreatedBy.substring(0, 120);
        }
        obj.setPtyCreatedBy(ptyCreatedBy);
    }
    
    public void DdpPartyDataOnDemand.setPtyCreatedDate(DdpParty obj, int index) {
        Calendar ptyCreatedDate = Calendar.getInstance();
        obj.setPtyCreatedDate(ptyCreatedDate);
    }
    
    public void DdpPartyDataOnDemand.setPtyModifiedBy(DdpParty obj, int index) {
        String ptyModifiedBy = "ptyModifiedBy_" + index;
        if (ptyModifiedBy.length() > 120) {
            ptyModifiedBy = ptyModifiedBy.substring(0, 120);
        }
        obj.setPtyModifiedBy(ptyModifiedBy);
    }
    
    public void DdpPartyDataOnDemand.setPtyModifiedDate(DdpParty obj, int index) {
        Calendar ptyModifiedDate = Calendar.getInstance();
        obj.setPtyModifiedDate(ptyModifiedDate);
    }
    
    public void DdpPartyDataOnDemand.setPtyPartyName(DdpParty obj, int index) {
        String ptyPartyName = "ptyPartyName_" + index;
        if (ptyPartyName.length() > 32) {
            ptyPartyName = ptyPartyName.substring(0, 32);
        }
        obj.setPtyPartyName(ptyPartyName);
    }
    
    public void DdpPartyDataOnDemand.setPtyStatus(DdpParty obj, int index) {
        Integer ptyStatus = new Integer(index);
        obj.setPtyStatus(ptyStatus);
    }
    
    public DdpParty DdpPartyDataOnDemand.getSpecificDdpParty(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpParty obj = data.get(index);
        String id = obj.getPtyPartyCode();
        return ddpPartyService.findDdpParty(id);
    }
    
    public DdpParty DdpPartyDataOnDemand.getRandomDdpParty() {
        init();
        DdpParty obj = data.get(rnd.nextInt(data.size()));
        String id = obj.getPtyPartyCode();
        return ddpPartyService.findDdpParty(id);
    }
    
    public boolean DdpPartyDataOnDemand.modifyDdpParty(DdpParty obj) {
        return false;
    }
    
    public void DdpPartyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpPartyService.findDdpPartyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpParty' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpParty>();
        for (int i = 0; i < 10; i++) {
            DdpParty obj = getNewTransientDdpParty(i);
            try {
                ddpPartyService.saveDdpParty(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpPartyRepository.flush();
            data.add(obj);
        }
    }
    
}
