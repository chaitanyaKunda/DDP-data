// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpProperties;
import com.agility.ddp.data.domain.DdpPropertiesDataOnDemand;
import com.agility.ddp.data.domain.DdpPropertiesPK;
import com.agility.ddp.data.domain.DdpPropertiesRepository;
import com.agility.ddp.data.domain.DdpPropertiesService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpPropertiesDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpPropertiesDataOnDemand: @Component;
    
    private Random DdpPropertiesDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpProperties> DdpPropertiesDataOnDemand.data;
    
    @Autowired
    DdpPropertiesService DdpPropertiesDataOnDemand.ddpPropertiesService;
    
    @Autowired
    DdpPropertiesRepository DdpPropertiesDataOnDemand.ddpPropertiesRepository;
    
    public DdpProperties DdpPropertiesDataOnDemand.getNewTransientDdpProperties(int index) {
        DdpProperties obj = new DdpProperties();
        setEmbeddedIdClass(obj, index);
        return obj;
    }
    
    public void DdpPropertiesDataOnDemand.setEmbeddedIdClass(DdpProperties obj, int index) {
        String proKey = "proKey_" + index;
        if (proKey.length() > 256) {
            proKey = new Random().nextInt(10) + proKey.substring(1, 256);
        }
        String proValue = "proValue_" + index;
        if (proValue.length() > 256) {
            proValue = new Random().nextInt(10) + proValue.substring(1, 256);
        }
        
        DdpPropertiesPK embeddedIdClass = new DdpPropertiesPK(proKey, proValue);
        obj.setId(embeddedIdClass);
    }
    
    public DdpProperties DdpPropertiesDataOnDemand.getSpecificDdpProperties(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpProperties obj = data.get(index);
        DdpPropertiesPK id = obj.getId();
        return ddpPropertiesService.findDdpProperties(id);
    }
    
    public DdpProperties DdpPropertiesDataOnDemand.getRandomDdpProperties() {
        init();
        DdpProperties obj = data.get(rnd.nextInt(data.size()));
        DdpPropertiesPK id = obj.getId();
        return ddpPropertiesService.findDdpProperties(id);
    }
    
    public boolean DdpPropertiesDataOnDemand.modifyDdpProperties(DdpProperties obj) {
        return false;
    }
    
    public void DdpPropertiesDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpPropertiesService.findDdpPropertiesEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpProperties' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpProperties>();
        for (int i = 0; i < 10; i++) {
            DdpProperties obj = getNewTransientDdpProperties(i);
            try {
                ddpPropertiesService.saveDdpProperties(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpPropertiesRepository.flush();
            data.add(obj);
        }
    }
    
}
