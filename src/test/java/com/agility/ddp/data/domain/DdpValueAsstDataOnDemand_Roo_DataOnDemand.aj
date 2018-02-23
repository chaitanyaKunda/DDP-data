// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpValueAsst;
import com.agility.ddp.data.domain.DdpValueAsstDataOnDemand;
import com.agility.ddp.data.domain.DdpValueAsstRepository;
import com.agility.ddp.data.domain.DdpValueAsstService;
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

privileged aspect DdpValueAsstDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpValueAsstDataOnDemand: @Component;
    
    private Random DdpValueAsstDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpValueAsst> DdpValueAsstDataOnDemand.data;
    
    @Autowired
    DdpValueAsstService DdpValueAsstDataOnDemand.ddpValueAsstService;
    
    @Autowired
    DdpValueAsstRepository DdpValueAsstDataOnDemand.ddpValueAsstRepository;
    
    public DdpValueAsst DdpValueAsstDataOnDemand.getNewTransientDdpValueAsst(int index) {
        DdpValueAsst obj = new DdpValueAsst();
        setVlaCreatedBy(obj, index);
        setVlaCreatedDate(obj, index);
        setVlaModifiedBy(obj, index);
        setVlaModifiedDate(obj, index);
        setVlaOperationName(obj, index);
        setVlaPropName(obj, index);
        setVlaPropVale(obj, index);
        setVlaStatus(obj, index);
        return obj;
    }
    
    public void DdpValueAsstDataOnDemand.setVlaCreatedBy(DdpValueAsst obj, int index) {
        String vlaCreatedBy = "vlaCreatedBy_" + index;
        if (vlaCreatedBy.length() > 120) {
            vlaCreatedBy = vlaCreatedBy.substring(0, 120);
        }
        obj.setVlaCreatedBy(vlaCreatedBy);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaCreatedDate(DdpValueAsst obj, int index) {
        Calendar vlaCreatedDate = Calendar.getInstance();
        obj.setVlaCreatedDate(vlaCreatedDate);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaModifiedBy(DdpValueAsst obj, int index) {
        String vlaModifiedBy = "vlaModifiedBy_" + index;
        if (vlaModifiedBy.length() > 120) {
            vlaModifiedBy = vlaModifiedBy.substring(0, 120);
        }
        obj.setVlaModifiedBy(vlaModifiedBy);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaModifiedDate(DdpValueAsst obj, int index) {
        Calendar vlaModifiedDate = Calendar.getInstance();
        obj.setVlaModifiedDate(vlaModifiedDate);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaOperationName(DdpValueAsst obj, int index) {
        String vlaOperationName = "vlaOperationName_" + index;
        if (vlaOperationName.length() > 32) {
            vlaOperationName = vlaOperationName.substring(0, 32);
        }
        obj.setVlaOperationName(vlaOperationName);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaPropName(DdpValueAsst obj, int index) {
        String vlaPropName = "vlaPropName_" + index;
        if (vlaPropName.length() > 32) {
            vlaPropName = vlaPropName.substring(0, 32);
        }
        obj.setVlaPropName(vlaPropName);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaPropVale(DdpValueAsst obj, int index) {
        String vlaPropVale = "vlaPropVale_" + index;
        if (vlaPropVale.length() > 32) {
            vlaPropVale = vlaPropVale.substring(0, 32);
        }
        obj.setVlaPropVale(vlaPropVale);
    }
    
    public void DdpValueAsstDataOnDemand.setVlaStatus(DdpValueAsst obj, int index) {
        Integer vlaStatus = new Integer(index);
        obj.setVlaStatus(vlaStatus);
    }
    
    public DdpValueAsst DdpValueAsstDataOnDemand.getSpecificDdpValueAsst(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpValueAsst obj = data.get(index);
        Integer id = obj.getVlaId();
        return ddpValueAsstService.findDdpValueAsst(id);
    }
    
    public DdpValueAsst DdpValueAsstDataOnDemand.getRandomDdpValueAsst() {
        init();
        DdpValueAsst obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getVlaId();
        return ddpValueAsstService.findDdpValueAsst(id);
    }
    
    public boolean DdpValueAsstDataOnDemand.modifyDdpValueAsst(DdpValueAsst obj) {
        return false;
    }
    
    public void DdpValueAsstDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpValueAsstService.findDdpValueAsstEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpValueAsst' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpValueAsst>();
        for (int i = 0; i < 10; i++) {
            DdpValueAsst obj = getNewTransientDdpValueAsst(i);
            try {
                ddpValueAsstService.saveDdpValueAsst(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpValueAsstRepository.flush();
            data.add(obj);
        }
    }
    
}