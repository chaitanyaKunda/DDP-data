// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRateLkp;
import com.agility.ddp.data.domain.DdpRateLkpDataOnDemand;
import com.agility.ddp.data.domain.DdpRateLkpPK;
import com.agility.ddp.data.domain.DdpRateLkpRepository;
import com.agility.ddp.data.domain.DdpRateLkpService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpRateLkpDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpRateLkpDataOnDemand: @Component;
    
    private Random DdpRateLkpDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpRateLkp> DdpRateLkpDataOnDemand.data;
    
    @Autowired
    DdpRateLkpService DdpRateLkpDataOnDemand.ddpRateLkpService;
    
    @Autowired
    DdpRateLkpRepository DdpRateLkpDataOnDemand.ddpRateLkpRepository;
    
    public DdpRateLkp DdpRateLkpDataOnDemand.getNewTransientDdpRateLkp(int index) {
        DdpRateLkp obj = new DdpRateLkp();
        setEmbeddedIdClass(obj, index);
        return obj;
    }
    
    public void DdpRateLkpDataOnDemand.setEmbeddedIdClass(DdpRateLkp obj, int index) {
        Integer rtlId = new Integer(index);
        String rtlOption = "rtlOption_" + index;
        if (rtlOption.length() > 16) {
            rtlOption = new Random().nextInt(10) + rtlOption.substring(1, 16);
        }
        String rtlDescription = "rtlDescription_" + index;
        if (rtlDescription.length() > 16) {
            rtlDescription = new Random().nextInt(10) + rtlDescription.substring(1, 16);
        }
        Integer rtlStatus = new Integer(index);
        
        DdpRateLkpPK embeddedIdClass = new DdpRateLkpPK(rtlId, rtlOption, rtlDescription, rtlStatus);
        obj.setId(embeddedIdClass);
    }
    
    public DdpRateLkp DdpRateLkpDataOnDemand.getSpecificDdpRateLkp(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpRateLkp obj = data.get(index);
        DdpRateLkpPK id = obj.getId();
        return ddpRateLkpService.findDdpRateLkp(id);
    }
    
    public DdpRateLkp DdpRateLkpDataOnDemand.getRandomDdpRateLkp() {
        init();
        DdpRateLkp obj = data.get(rnd.nextInt(data.size()));
        DdpRateLkpPK id = obj.getId();
        return ddpRateLkpService.findDdpRateLkp(id);
    }
    
    public boolean DdpRateLkpDataOnDemand.modifyDdpRateLkp(DdpRateLkp obj) {
        return false;
    }
    
    public void DdpRateLkpDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpRateLkpService.findDdpRateLkpEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpRateLkp' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpRateLkp>();
        for (int i = 0; i < 10; i++) {
            DdpRateLkp obj = getNewTransientDdpRateLkp(i);
            try {
                ddpRateLkpService.saveDdpRateLkp(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpRateLkpRepository.flush();
            data.add(obj);
        }
    }
    
}