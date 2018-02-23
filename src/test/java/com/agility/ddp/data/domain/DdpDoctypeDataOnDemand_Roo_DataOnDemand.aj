// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDoctype;
import com.agility.ddp.data.domain.DdpDoctypeDataOnDemand;
import com.agility.ddp.data.domain.DdpDoctypeRepository;
import com.agility.ddp.data.domain.DdpDoctypeService;
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

privileged aspect DdpDoctypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpDoctypeDataOnDemand: @Component;
    
    private Random DdpDoctypeDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpDoctype> DdpDoctypeDataOnDemand.data;
    
    @Autowired
    DdpDoctypeService DdpDoctypeDataOnDemand.ddpDoctypeService;
    
    @Autowired
    DdpDoctypeRepository DdpDoctypeDataOnDemand.ddpDoctypeRepository;
    
    public DdpDoctype DdpDoctypeDataOnDemand.getNewTransientDdpDoctype(int index) {
        DdpDoctype obj = new DdpDoctype();
        setDtyCompanyCode(obj, index);
        setDtyCreatedBy(obj, index);
        setDtyCreatedDate(obj, index);
        setDtyDocTypeName(obj, index);
        setDtyModifiedBy(obj, index);
        setDtyModifiedDate(obj, index);
        setDtySource(obj, index);
        setDtyStatus(obj, index);
        return obj;
    }
    
    public void DdpDoctypeDataOnDemand.setDtyCompanyCode(DdpDoctype obj, int index) {
        String dtyCompanyCode = "d_" + index;
        if (dtyCompanyCode.length() > 3) {
            dtyCompanyCode = dtyCompanyCode.substring(0, 3);
        }
        obj.setDtyCompanyCode(dtyCompanyCode);
    }
    
    public void DdpDoctypeDataOnDemand.setDtyCreatedBy(DdpDoctype obj, int index) {
        String dtyCreatedBy = "dtyCreatedBy_" + index;
        if (dtyCreatedBy.length() > 120) {
            dtyCreatedBy = dtyCreatedBy.substring(0, 120);
        }
        obj.setDtyCreatedBy(dtyCreatedBy);
    }
    
    public void DdpDoctypeDataOnDemand.setDtyCreatedDate(DdpDoctype obj, int index) {
        Calendar dtyCreatedDate = Calendar.getInstance();
        obj.setDtyCreatedDate(dtyCreatedDate);
    }
    
    public void DdpDoctypeDataOnDemand.setDtyDocTypeName(DdpDoctype obj, int index) {
        String dtyDocTypeName = "dtyDocTypeName_" + index;
        if (dtyDocTypeName.length() > 64) {
            dtyDocTypeName = dtyDocTypeName.substring(0, 64);
        }
        obj.setDtyDocTypeName(dtyDocTypeName);
    }
    
    public void DdpDoctypeDataOnDemand.setDtyModifiedBy(DdpDoctype obj, int index) {
        String dtyModifiedBy = "dtyModifiedBy_" + index;
        if (dtyModifiedBy.length() > 120) {
            dtyModifiedBy = dtyModifiedBy.substring(0, 120);
        }
        obj.setDtyModifiedBy(dtyModifiedBy);
    }
    
    public void DdpDoctypeDataOnDemand.setDtyModifiedDate(DdpDoctype obj, int index) {
        Calendar dtyModifiedDate = Calendar.getInstance();
        obj.setDtyModifiedDate(dtyModifiedDate);
    }
    
    public void DdpDoctypeDataOnDemand.setDtySource(DdpDoctype obj, int index) {
        String dtySource = "dtySource_" + index;
        if (dtySource.length() > 64) {
            dtySource = dtySource.substring(0, 64);
        }
        obj.setDtySource(dtySource);
    }
    
    public void DdpDoctypeDataOnDemand.setDtyStatus(DdpDoctype obj, int index) {
        Integer dtyStatus = new Integer(index);
        obj.setDtyStatus(dtyStatus);
    }
    
    public DdpDoctype DdpDoctypeDataOnDemand.getSpecificDdpDoctype(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpDoctype obj = data.get(index);
        String id = obj.getDtyDocTypeCode();
        return ddpDoctypeService.findDdpDoctype(id);
    }
    
    public DdpDoctype DdpDoctypeDataOnDemand.getRandomDdpDoctype() {
        init();
        DdpDoctype obj = data.get(rnd.nextInt(data.size()));
        String id = obj.getDtyDocTypeCode();
        return ddpDoctypeService.findDdpDoctype(id);
    }
    
    public boolean DdpDoctypeDataOnDemand.modifyDdpDoctype(DdpDoctype obj) {
        return false;
    }
    
    public void DdpDoctypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpDoctypeService.findDdpDoctypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpDoctype' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpDoctype>();
        for (int i = 0; i < 10; i++) {
            DdpDoctype obj = getNewTransientDdpDoctype(i);
            try {
                ddpDoctypeService.saveDdpDoctype(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpDoctypeRepository.flush();
            data.add(obj);
        }
    }
    
}
