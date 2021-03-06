// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizationHolder;
import com.agility.ddp.data.domain.DdpCategorizationHolderDataOnDemand;
import com.agility.ddp.data.domain.DdpCategorizationHolderRepository;
import com.agility.ddp.data.domain.DdpCategorizationHolderService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DdpCategorizationHolderDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpCategorizationHolderDataOnDemand: @Component;
    
    private Random DdpCategorizationHolderDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpCategorizationHolder> DdpCategorizationHolderDataOnDemand.data;
    
    @Autowired
    DdpCategorizationHolderService DdpCategorizationHolderDataOnDemand.ddpCategorizationHolderService;
    
    @Autowired
    DdpCategorizationHolderRepository DdpCategorizationHolderDataOnDemand.ddpCategorizationHolderRepository;
    
    public DdpCategorizationHolder DdpCategorizationHolderDataOnDemand.getNewTransientDdpCategorizationHolder(int index) {
        DdpCategorizationHolder obj = new DdpCategorizationHolder();
        setChlDtxId(obj, index);
        setChlRulId(obj, index);
        setChlSynId(obj, index);
        return obj;
    }
    
    public void DdpCategorizationHolderDataOnDemand.setChlDtxId(DdpCategorizationHolder obj, int index) {
        Integer chlDtxId = new Integer(index);
        obj.setChlDtxId(chlDtxId);
    }
    
    public void DdpCategorizationHolderDataOnDemand.setChlRulId(DdpCategorizationHolder obj, int index) {
        Integer chlRulId = new Integer(index);
        obj.setChlRulId(chlRulId);
    }
    
    public void DdpCategorizationHolderDataOnDemand.setChlSynId(DdpCategorizationHolder obj, int index) {
        Integer chlSynId = new Integer(index);
        obj.setChlSynId(chlSynId);
    }
    
    public DdpCategorizationHolder DdpCategorizationHolderDataOnDemand.getSpecificDdpCategorizationHolder(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpCategorizationHolder obj = data.get(index);
        Integer id = obj.getChlId();
        return ddpCategorizationHolderService.findDdpCategorizationHolder(id);
    }
    
    public DdpCategorizationHolder DdpCategorizationHolderDataOnDemand.getRandomDdpCategorizationHolder() {
        init();
        DdpCategorizationHolder obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getChlId();
        return ddpCategorizationHolderService.findDdpCategorizationHolder(id);
    }
    
    public boolean DdpCategorizationHolderDataOnDemand.modifyDdpCategorizationHolder(DdpCategorizationHolder obj) {
        return false;
    }
    
    public void DdpCategorizationHolderDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpCategorizationHolderService.findDdpCategorizationHolderEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpCategorizationHolder' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpCategorizationHolder>();
        for (int i = 0; i < 10; i++) {
            DdpCategorizationHolder obj = getNewTransientDdpCategorizationHolder(i);
            try {
                ddpCategorizationHolderService.saveDdpCategorizationHolder(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpCategorizationHolderRepository.flush();
            data.add(obj);
        }
    }
    
}
