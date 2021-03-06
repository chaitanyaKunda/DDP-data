// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDmsDocProp;
import com.agility.ddp.data.domain.DdpDmsDocPropDataOnDemand;
import com.agility.ddp.data.domain.DdpDmsDocPropPK;
import com.agility.ddp.data.domain.DdpDmsDocPropRepository;
import com.agility.ddp.data.domain.DdpDmsDocPropService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpDmsDocPropDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpDmsDocPropDataOnDemand: @Component;
    
    private Random DdpDmsDocPropDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpDmsDocProp> DdpDmsDocPropDataOnDemand.data;
    
    @Autowired
    DdpDmsDocPropService DdpDmsDocPropDataOnDemand.ddpDmsDocPropService;
    
    @Autowired
    DdpDmsDocPropRepository DdpDmsDocPropDataOnDemand.ddpDmsDocPropRepository;
    
    public DdpDmsDocProp DdpDmsDocPropDataOnDemand.getNewTransientDdpDmsDocProp(int index) {
        DdpDmsDocProp obj = new DdpDmsDocProp();
        setEmbeddedIdClass(obj, index);
        return obj;
    }
    
    public void DdpDmsDocPropDataOnDemand.setEmbeddedIdClass(DdpDmsDocProp obj, int index) {
        Integer dprId = new Integer(index);
        String dprDoctypeCode = "dprDoctypeCode_" + index;
        if (dprDoctypeCode.length() > 16) {
            dprDoctypeCode = new Random().nextInt(10) + dprDoctypeCode.substring(1, 16);
        }
        String dprAttributeName = "dprAttributeName_" + index;
        if (dprAttributeName.length() > 32) {
            dprAttributeName = new Random().nextInt(10) + dprAttributeName.substring(1, 32);
        }
        String dprAttributeLabel = "dprAttributeLabel_" + index;
        if (dprAttributeLabel.length() > 64) {
            dprAttributeLabel = new Random().nextInt(10) + dprAttributeLabel.substring(1, 64);
        }
        Integer dprStatus = new Integer(index);
        
        DdpDmsDocPropPK embeddedIdClass = new DdpDmsDocPropPK(dprId, dprDoctypeCode, dprAttributeName, dprAttributeLabel, dprStatus);
        obj.setId(embeddedIdClass);
    }
    
    public DdpDmsDocProp DdpDmsDocPropDataOnDemand.getSpecificDdpDmsDocProp(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpDmsDocProp obj = data.get(index);
        DdpDmsDocPropPK id = obj.getId();
        return ddpDmsDocPropService.findDdpDmsDocProp(id);
    }
    
    public DdpDmsDocProp DdpDmsDocPropDataOnDemand.getRandomDdpDmsDocProp() {
        init();
        DdpDmsDocProp obj = data.get(rnd.nextInt(data.size()));
        DdpDmsDocPropPK id = obj.getId();
        return ddpDmsDocPropService.findDdpDmsDocProp(id);
    }
    
    public boolean DdpDmsDocPropDataOnDemand.modifyDdpDmsDocProp(DdpDmsDocProp obj) {
        return false;
    }
    
    public void DdpDmsDocPropDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpDmsDocPropService.findDdpDmsDocPropEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpDmsDocProp' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpDmsDocProp>();
        for (int i = 0; i < 10; i++) {
            DdpDmsDocProp obj = getNewTransientDdpDmsDocProp(i);
            try {
                ddpDmsDocPropService.saveDdpDmsDocProp(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpDmsDocPropRepository.flush();
            data.add(obj);
        }
    }
    
}
