// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDocnameConv;
import com.agility.ddp.data.domain.DdpDocnameConvDataOnDemand;
import com.agility.ddp.data.domain.DdpDocnameConvRepository;
import com.agility.ddp.data.domain.DdpDocnameConvService;
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

privileged aspect DdpDocnameConvDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpDocnameConvDataOnDemand: @Component;
    
    private Random DdpDocnameConvDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpDocnameConv> DdpDocnameConvDataOnDemand.data;
    
    @Autowired
    DdpDocnameConvService DdpDocnameConvDataOnDemand.ddpDocnameConvService;
    
    @Autowired
    DdpDocnameConvRepository DdpDocnameConvDataOnDemand.ddpDocnameConvRepository;
    
    public DdpDocnameConv DdpDocnameConvDataOnDemand.getNewTransientDdpDocnameConv(int index) {
        DdpDocnameConv obj = new DdpDocnameConv();
        setDcvBranchCode(obj, index);
        setDcvCompanyCode(obj, index);
        setDcvCreatedBy(obj, index);
        setDcvCreatedDate(obj, index);
        setDcvDoctypeCode(obj, index);
        setDcvDupDocNamingConv(obj, index);
        setDcvGenNamingConv(obj, index);
        setDcvModifiedBy(obj, index);
        setDcvModifiedDate(obj, index);
        setDcvSaveType(obj, index);
        setDcvStatus(obj, index);
        return obj;
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvBranchCode(DdpDocnameConv obj, int index) {
        String dcvBranchCode = "d_" + index;
        if (dcvBranchCode.length() > 3) {
            dcvBranchCode = dcvBranchCode.substring(0, 3);
        }
        obj.setDcvBranchCode(dcvBranchCode);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvCompanyCode(DdpDocnameConv obj, int index) {
        String dcvCompanyCode = "d_" + index;
        if (dcvCompanyCode.length() > 3) {
            dcvCompanyCode = dcvCompanyCode.substring(0, 3);
        }
        obj.setDcvCompanyCode(dcvCompanyCode);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvCreatedBy(DdpDocnameConv obj, int index) {
        String dcvCreatedBy = "dcvCreatedBy_" + index;
        if (dcvCreatedBy.length() > 120) {
            dcvCreatedBy = dcvCreatedBy.substring(0, 120);
        }
        obj.setDcvCreatedBy(dcvCreatedBy);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvCreatedDate(DdpDocnameConv obj, int index) {
        Calendar dcvCreatedDate = Calendar.getInstance();
        obj.setDcvCreatedDate(dcvCreatedDate);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvDoctypeCode(DdpDocnameConv obj, int index) {
        String dcvDoctypeCode = "dcvDoctypeCode_" + index;
        if (dcvDoctypeCode.length() > 16) {
            dcvDoctypeCode = dcvDoctypeCode.substring(0, 16);
        }
        obj.setDcvDoctypeCode(dcvDoctypeCode);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvDupDocNamingConv(DdpDocnameConv obj, int index) {
        String dcvDupDocNamingConv = "dcvDupDocNamingConv_" + index;
        if (dcvDupDocNamingConv.length() > 256) {
            dcvDupDocNamingConv = dcvDupDocNamingConv.substring(0, 256);
        }
        obj.setDcvDupDocNamingConv(dcvDupDocNamingConv);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvGenNamingConv(DdpDocnameConv obj, int index) {
        String dcvGenNamingConv = "dcvGenNamingConv_" + index;
        if (dcvGenNamingConv.length() > 256) {
            dcvGenNamingConv = dcvGenNamingConv.substring(0, 256);
        }
        obj.setDcvGenNamingConv(dcvGenNamingConv);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvModifiedBy(DdpDocnameConv obj, int index) {
        String dcvModifiedBy = "dcvModifiedBy_" + index;
        if (dcvModifiedBy.length() > 120) {
            dcvModifiedBy = dcvModifiedBy.substring(0, 120);
        }
        obj.setDcvModifiedBy(dcvModifiedBy);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvModifiedDate(DdpDocnameConv obj, int index) {
        Calendar dcvModifiedDate = Calendar.getInstance();
        obj.setDcvModifiedDate(dcvModifiedDate);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvSaveType(DdpDocnameConv obj, int index) {
        String dcvSaveType = "dcvSaveType_" + index;
        if (dcvSaveType.length() > 16) {
            dcvSaveType = dcvSaveType.substring(0, 16);
        }
        obj.setDcvSaveType(dcvSaveType);
    }
    
    public void DdpDocnameConvDataOnDemand.setDcvStatus(DdpDocnameConv obj, int index) {
        Integer dcvStatus = new Integer(index);
        obj.setDcvStatus(dcvStatus);
    }
    
    public DdpDocnameConv DdpDocnameConvDataOnDemand.getSpecificDdpDocnameConv(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpDocnameConv obj = data.get(index);
        Integer id = obj.getDcvId();
        return ddpDocnameConvService.findDdpDocnameConv(id);
    }
    
    public DdpDocnameConv DdpDocnameConvDataOnDemand.getRandomDdpDocnameConv() {
        init();
        DdpDocnameConv obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getDcvId();
        return ddpDocnameConvService.findDdpDocnameConv(id);
    }
    
    public boolean DdpDocnameConvDataOnDemand.modifyDdpDocnameConv(DdpDocnameConv obj) {
        return false;
    }
    
    public void DdpDocnameConvDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpDocnameConvService.findDdpDocnameConvEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpDocnameConv' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpDocnameConv>();
        for (int i = 0; i < 10; i++) {
            DdpDocnameConv obj = getNewTransientDdpDocnameConv(i);
            try {
                ddpDocnameConvService.saveDdpDocnameConv(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpDocnameConvRepository.flush();
            data.add(obj);
        }
    }
    
}
