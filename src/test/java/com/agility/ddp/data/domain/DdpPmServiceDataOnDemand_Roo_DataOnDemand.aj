// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpPmService;
import com.agility.ddp.data.domain.DdpPmServiceDataOnDemand;
import com.agility.ddp.data.domain.DdpPmServiceRepository;
import com.agility.ddp.data.domain.DdpPmServiceService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpPmServiceDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpPmServiceDataOnDemand: @Component;
    
    private Random DdpPmServiceDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpPmService> DdpPmServiceDataOnDemand.data;
    
    @Autowired
    DdpPmServiceService DdpPmServiceDataOnDemand.ddpPmServiceService;
    
    @Autowired
    DdpPmServiceRepository DdpPmServiceDataOnDemand.ddpPmServiceRepository;
    
    public DdpPmService DdpPmServiceDataOnDemand.getNewTransientDdpPmService(int index) {
        DdpPmService obj = new DdpPmService();
        setPsrDescription(obj, index);
        setPsrName(obj, index);
        setPsrStatus(obj, index);
        return obj;
    }
    
    public void DdpPmServiceDataOnDemand.setPsrDescription(DdpPmService obj, int index) {
        String psrDescription = "psrDescription_" + index;
        if (psrDescription.length() > 250) {
            psrDescription = psrDescription.substring(0, 250);
        }
        obj.setPsrDescription(psrDescription);
    }
    
    public void DdpPmServiceDataOnDemand.setPsrName(DdpPmService obj, int index) {
        String psrName = "psrName_" + index;
        if (psrName.length() > 120) {
            psrName = psrName.substring(0, 120);
        }
        obj.setPsrName(psrName);
    }
    
    public void DdpPmServiceDataOnDemand.setPsrStatus(DdpPmService obj, int index) {
        Integer psrStatus = new Integer(index);
        obj.setPsrStatus(psrStatus);
    }
    
    public DdpPmService DdpPmServiceDataOnDemand.getSpecificDdpPmService(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpPmService obj = data.get(index);
        Integer id = obj.getPsrId();
        return ddpPmServiceService.findDdpPmService(id);
    }
    
    public DdpPmService DdpPmServiceDataOnDemand.getRandomDdpPmService() {
        init();
        DdpPmService obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getPsrId();
        return ddpPmServiceService.findDdpPmService(id);
    }
    
    public boolean DdpPmServiceDataOnDemand.modifyDdpPmService(DdpPmService obj) {
        return false;
    }
    
    public void DdpPmServiceDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpPmServiceService.findDdpPmServiceEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpPmService' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpPmService>();
        for (int i = 0; i < 10; i++) {
            DdpPmService obj = getNewTransientDdpPmService(i);
            try {
                ddpPmServiceService.saveDdpPmService(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpPmServiceRepository.flush();
            data.add(obj);
        }
    }
    
}
