// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCompressionLkp;
import com.agility.ddp.data.domain.DdpCompressionLkpDataOnDemand;
import com.agility.ddp.data.domain.DdpCompressionLkpRepository;
import com.agility.ddp.data.domain.DdpCompressionLkpService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpCompressionLkpDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpCompressionLkpDataOnDemand: @Component;
    
    private Random DdpCompressionLkpDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpCompressionLkp> DdpCompressionLkpDataOnDemand.data;
    
    @Autowired
    DdpCompressionLkpService DdpCompressionLkpDataOnDemand.ddpCompressionLkpService;
    
    @Autowired
    DdpCompressionLkpRepository DdpCompressionLkpDataOnDemand.ddpCompressionLkpRepository;
    
    public DdpCompressionLkp DdpCompressionLkpDataOnDemand.getNewTransientDdpCompressionLkp(int index) {
        DdpCompressionLkp obj = new DdpCompressionLkp();
        setCmlCompressionSize(obj, index);
        setCmlCopmressionLevel(obj, index);
        return obj;
    }
    
    public void DdpCompressionLkpDataOnDemand.setCmlCompressionSize(DdpCompressionLkp obj, int index) {
        Integer cmlCompressionSize = new Integer(index);
        obj.setCmlCompressionSize(cmlCompressionSize);
    }
    
    public void DdpCompressionLkpDataOnDemand.setCmlCopmressionLevel(DdpCompressionLkp obj, int index) {
        String cmlCopmressionLevel = "cmlCop_" + index;
        if (cmlCopmressionLevel.length() > 8) {
            cmlCopmressionLevel = cmlCopmressionLevel.substring(0, 8);
        }
        obj.setCmlCopmressionLevel(cmlCopmressionLevel);
    }
    
    public DdpCompressionLkp DdpCompressionLkpDataOnDemand.getSpecificDdpCompressionLkp(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpCompressionLkp obj = data.get(index);
        Integer id = obj.getCmlCopmressionLkpId();
        return ddpCompressionLkpService.findDdpCompressionLkp(id);
    }
    
    public DdpCompressionLkp DdpCompressionLkpDataOnDemand.getRandomDdpCompressionLkp() {
        init();
        DdpCompressionLkp obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getCmlCopmressionLkpId();
        return ddpCompressionLkpService.findDdpCompressionLkp(id);
    }
    
    public boolean DdpCompressionLkpDataOnDemand.modifyDdpCompressionLkp(DdpCompressionLkp obj) {
        return false;
    }
    
    public void DdpCompressionLkpDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpCompressionLkpService.findDdpCompressionLkpEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpCompressionLkp' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpCompressionLkp>();
        for (int i = 0; i < 10; i++) {
            DdpCompressionLkp obj = getNewTransientDdpCompressionLkp(i);
            try {
                ddpCompressionLkpService.saveDdpCompressionLkp(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpCompressionLkpRepository.flush();
            data.add(obj);
        }
    }
    
}