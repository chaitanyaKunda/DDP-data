// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommunicationSetup;
import com.agility.ddp.data.domain.DdpCommunicationSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpCommunicationSetupRepository;
import com.agility.ddp.data.domain.DdpCommunicationSetupService;
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

privileged aspect DdpCommunicationSetupDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpCommunicationSetupDataOnDemand: @Component;
    
    private Random DdpCommunicationSetupDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpCommunicationSetup> DdpCommunicationSetupDataOnDemand.data;
    
    @Autowired
    DdpCommunicationSetupService DdpCommunicationSetupDataOnDemand.ddpCommunicationSetupService;
    
    @Autowired
    DdpCommunicationSetupRepository DdpCommunicationSetupDataOnDemand.ddpCommunicationSetupRepository;
    
    public DdpCommunicationSetup DdpCommunicationSetupDataOnDemand.getNewTransientDdpCommunicationSetup(int index) {
        DdpCommunicationSetup obj = new DdpCommunicationSetup();
        setCmsCommunicationProtocol(obj, index);
        setCmsCommunicationProtocol2(obj, index);
        setCmsCommunicationProtocol3(obj, index);
        setCmsCreatedBy(obj, index);
        setCmsCreatedDate(obj, index);
        setCmsModifiedBy(obj, index);
        setCmsModifiedDate(obj, index);
        setCmsProtocolSettingsId(obj, index);
        setCmsProtocolSettingsId2(obj, index);
        setCmsProtocolSettingsId3(obj, index);
        setCmsStatus(obj, index);
        return obj;
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsCommunicationProtocol(DdpCommunicationSetup obj, int index) {
        String cmsCommunicationProtocol = "cmsCom_" + index;
        if (cmsCommunicationProtocol.length() > 8) {
            cmsCommunicationProtocol = cmsCommunicationProtocol.substring(0, 8);
        }
        obj.setCmsCommunicationProtocol(cmsCommunicationProtocol);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsCommunicationProtocol2(DdpCommunicationSetup obj, int index) {
        String cmsCommunicationProtocol2 = "cmsCom_" + index;
        if (cmsCommunicationProtocol2.length() > 8) {
            cmsCommunicationProtocol2 = cmsCommunicationProtocol2.substring(0, 8);
        }
        obj.setCmsCommunicationProtocol2(cmsCommunicationProtocol2);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsCommunicationProtocol3(DdpCommunicationSetup obj, int index) {
        String cmsCommunicationProtocol3 = "cmsCom_" + index;
        if (cmsCommunicationProtocol3.length() > 8) {
            cmsCommunicationProtocol3 = cmsCommunicationProtocol3.substring(0, 8);
        }
        obj.setCmsCommunicationProtocol3(cmsCommunicationProtocol3);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsCreatedBy(DdpCommunicationSetup obj, int index) {
        String cmsCreatedBy = "cmsCreatedBy_" + index;
        if (cmsCreatedBy.length() > 120) {
            cmsCreatedBy = cmsCreatedBy.substring(0, 120);
        }
        obj.setCmsCreatedBy(cmsCreatedBy);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsCreatedDate(DdpCommunicationSetup obj, int index) {
        Calendar cmsCreatedDate = Calendar.getInstance();
        obj.setCmsCreatedDate(cmsCreatedDate);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsModifiedBy(DdpCommunicationSetup obj, int index) {
        String cmsModifiedBy = "cmsModifiedBy_" + index;
        if (cmsModifiedBy.length() > 120) {
            cmsModifiedBy = cmsModifiedBy.substring(0, 120);
        }
        obj.setCmsModifiedBy(cmsModifiedBy);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsModifiedDate(DdpCommunicationSetup obj, int index) {
        Calendar cmsModifiedDate = Calendar.getInstance();
        obj.setCmsModifiedDate(cmsModifiedDate);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsProtocolSettingsId(DdpCommunicationSetup obj, int index) {
        String cmsProtocolSettingsId = "cmsProtoco_" + index;
        if (cmsProtocolSettingsId.length() > 12) {
            cmsProtocolSettingsId = cmsProtocolSettingsId.substring(0, 12);
        }
        obj.setCmsProtocolSettingsId(cmsProtocolSettingsId);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsProtocolSettingsId2(DdpCommunicationSetup obj, int index) {
        String cmsProtocolSettingsId2 = "cmsProtoco_" + index;
        if (cmsProtocolSettingsId2.length() > 12) {
            cmsProtocolSettingsId2 = cmsProtocolSettingsId2.substring(0, 12);
        }
        obj.setCmsProtocolSettingsId2(cmsProtocolSettingsId2);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsProtocolSettingsId3(DdpCommunicationSetup obj, int index) {
        String cmsProtocolSettingsId3 = "cmsProtoco_" + index;
        if (cmsProtocolSettingsId3.length() > 12) {
            cmsProtocolSettingsId3 = cmsProtocolSettingsId3.substring(0, 12);
        }
        obj.setCmsProtocolSettingsId3(cmsProtocolSettingsId3);
    }
    
    public void DdpCommunicationSetupDataOnDemand.setCmsStatus(DdpCommunicationSetup obj, int index) {
        Integer cmsStatus = new Integer(index);
        obj.setCmsStatus(cmsStatus);
    }
    
    public DdpCommunicationSetup DdpCommunicationSetupDataOnDemand.getSpecificDdpCommunicationSetup(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpCommunicationSetup obj = data.get(index);
        Integer id = obj.getCmsCommunicationId();
        return ddpCommunicationSetupService.findDdpCommunicationSetup(id);
    }
    
    public DdpCommunicationSetup DdpCommunicationSetupDataOnDemand.getRandomDdpCommunicationSetup() {
        init();
        DdpCommunicationSetup obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getCmsCommunicationId();
        return ddpCommunicationSetupService.findDdpCommunicationSetup(id);
    }
    
    public boolean DdpCommunicationSetupDataOnDemand.modifyDdpCommunicationSetup(DdpCommunicationSetup obj) {
        return false;
    }
    
    public void DdpCommunicationSetupDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpCommunicationSetupService.findDdpCommunicationSetupEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpCommunicationSetup' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpCommunicationSetup>();
        for (int i = 0; i < 10; i++) {
            DdpCommunicationSetup obj = getNewTransientDdpCommunicationSetup(i);
            try {
                ddpCommunicationSetupService.saveDdpCommunicationSetup(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpCommunicationSetupRepository.flush();
            data.add(obj);
        }
    }
    
}