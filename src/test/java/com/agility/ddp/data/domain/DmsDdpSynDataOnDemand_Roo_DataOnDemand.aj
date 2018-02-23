// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DmsDdpSyn;
import com.agility.ddp.data.domain.DmsDdpSynDataOnDemand;
import com.agility.ddp.data.domain.DmsDdpSynRepository;
import com.agility.ddp.data.domain.DmsDdpSynService;
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

privileged aspect DmsDdpSynDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DmsDdpSynDataOnDemand: @Component;
    
    private Random DmsDdpSynDataOnDemand.rnd = new SecureRandom();
    
    private List<DmsDdpSyn> DmsDdpSynDataOnDemand.data;
    
    @Autowired
    DmsDdpSynService DmsDdpSynDataOnDemand.dmsDdpSynService;
    
    @Autowired
    DmsDdpSynRepository DmsDdpSynDataOnDemand.dmsDdpSynRepository;
    
    public DmsDdpSyn DmsDdpSynDataOnDemand.getNewTransientDmsDdpSyn(int index) {
        DmsDdpSyn obj = new DmsDdpSyn();
        setSynBranchSource(obj, index);
        setSynClientId(obj, index);
        setSynCompanySource(obj, index);
        setSynConsignee(obj, index);
        setSynCreatedDate(obj, index);
        setSynDebitsBack(obj, index);
        setSynDebitsForward(obj, index);
        setSynDeptSource(obj, index);
        setSynDocType(obj, index);
        setSynFinalAgentId(obj, index);
        setSynGenSystem(obj, index);
        setSynInitialAgent(obj, index);
        setSynIntermediateAgent(obj, index);
        setSynIsRated(obj, index);
        setSynNotifyParty(obj, index);
        setSynRObjectId(obj, index);
        setSynShipper(obj, index);
        setSynTboName(obj, index);
        return obj;
    }
    
    public void DmsDdpSynDataOnDemand.setSynBranchSource(DmsDdpSyn obj, int index) {
        String synBranchSource = "s_" + index;
        if (synBranchSource.length() > 3) {
            synBranchSource = synBranchSource.substring(0, 3);
        }
        obj.setSynBranchSource(synBranchSource);
    }
    
    public void DmsDdpSynDataOnDemand.setSynClientId(DmsDdpSyn obj, int index) {
        String synClientId = "synClientId_" + index;
        if (synClientId.length() > 64) {
            synClientId = synClientId.substring(0, 64);
        }
        obj.setSynClientId(synClientId);
    }
    
    public void DmsDdpSynDataOnDemand.setSynCompanySource(DmsDdpSyn obj, int index) {
        String synCompanySource = "s_" + index;
        if (synCompanySource.length() > 3) {
            synCompanySource = synCompanySource.substring(0, 3);
        }
        obj.setSynCompanySource(synCompanySource);
    }
    
    public void DmsDdpSynDataOnDemand.setSynConsignee(DmsDdpSyn obj, int index) {
        String synConsignee = "synConsi_" + index;
        if (synConsignee.length() > 10) {
            synConsignee = synConsignee.substring(0, 10);
        }
        obj.setSynConsignee(synConsignee);
    }
    
    public void DmsDdpSynDataOnDemand.setSynCreatedDate(DmsDdpSyn obj, int index) {
        Calendar synCreatedDate = Calendar.getInstance();
        obj.setSynCreatedDate(synCreatedDate);
    }
    
    public void DmsDdpSynDataOnDemand.setSynDebitsBack(DmsDdpSyn obj, int index) {
        String synDebitsBack = "synDebit_" + index;
        if (synDebitsBack.length() > 10) {
            synDebitsBack = synDebitsBack.substring(0, 10);
        }
        obj.setSynDebitsBack(synDebitsBack);
    }
    
    public void DmsDdpSynDataOnDemand.setSynDebitsForward(DmsDdpSyn obj, int index) {
        String synDebitsForward = "synDebit_" + index;
        if (synDebitsForward.length() > 10) {
            synDebitsForward = synDebitsForward.substring(0, 10);
        }
        obj.setSynDebitsForward(synDebitsForward);
    }
    
    public void DmsDdpSynDataOnDemand.setSynDeptSource(DmsDdpSyn obj, int index) {
        String synDeptSource = "synD_" + index;
        if (synDeptSource.length() > 6) {
            synDeptSource = synDeptSource.substring(0, 6);
        }
        obj.setSynDeptSource(synDeptSource);
    }
    
    public void DmsDdpSynDataOnDemand.setSynDocType(DmsDdpSyn obj, int index) {
        String synDocType = "synDocType_" + index;
        if (synDocType.length() > 16) {
            synDocType = synDocType.substring(0, 16);
        }
        obj.setSynDocType(synDocType);
    }
    
    public void DmsDdpSynDataOnDemand.setSynFinalAgentId(DmsDdpSyn obj, int index) {
        String synFinalAgentId = "synFinalAgentI_" + index;
        if (synFinalAgentId.length() > 16) {
            synFinalAgentId = synFinalAgentId.substring(0, 16);
        }
        obj.setSynFinalAgentId(synFinalAgentId);
    }
    
    public void DmsDdpSynDataOnDemand.setSynGenSystem(DmsDdpSyn obj, int index) {
        String synGenSystem = "synGenSystem_" + index;
        if (synGenSystem.length() > 32) {
            synGenSystem = synGenSystem.substring(0, 32);
        }
        obj.setSynGenSystem(synGenSystem);
    }
    
    public void DmsDdpSynDataOnDemand.setSynInitialAgent(DmsDdpSyn obj, int index) {
        String synInitialAgent = "synIniti_" + index;
        if (synInitialAgent.length() > 10) {
            synInitialAgent = synInitialAgent.substring(0, 10);
        }
        obj.setSynInitialAgent(synInitialAgent);
    }
    
    public void DmsDdpSynDataOnDemand.setSynIntermediateAgent(DmsDdpSyn obj, int index) {
        String synIntermediateAgent = "synInter_" + index;
        if (synIntermediateAgent.length() > 10) {
            synIntermediateAgent = synIntermediateAgent.substring(0, 10);
        }
        obj.setSynIntermediateAgent(synIntermediateAgent);
    }
    
    public void DmsDdpSynDataOnDemand.setSynIsRated(DmsDdpSyn obj, int index) {
        Integer synIsRated = new Integer(index);
        obj.setSynIsRated(synIsRated);
    }
    
    public void DmsDdpSynDataOnDemand.setSynNotifyParty(DmsDdpSyn obj, int index) {
        String synNotifyParty = "synNotif_" + index;
        if (synNotifyParty.length() > 10) {
            synNotifyParty = synNotifyParty.substring(0, 10);
        }
        obj.setSynNotifyParty(synNotifyParty);
    }
    
    public void DmsDdpSynDataOnDemand.setSynRObjectId(DmsDdpSyn obj, int index) {
        String synRObjectId = "synRObjectId_" + index;
        if (synRObjectId.length() > 32) {
            synRObjectId = synRObjectId.substring(0, 32);
        }
        obj.setSynRObjectId(synRObjectId);
    }
    
    public void DmsDdpSynDataOnDemand.setSynShipper(DmsDdpSyn obj, int index) {
        String synShipper = "synShipp_" + index;
        if (synShipper.length() > 10) {
            synShipper = synShipper.substring(0, 10);
        }
        obj.setSynShipper(synShipper);
    }
    
    public void DmsDdpSynDataOnDemand.setSynTboName(DmsDdpSyn obj, int index) {
        String synTboName = "synTboName_" + index;
        if (synTboName.length() > 64) {
            synTboName = synTboName.substring(0, 64);
        }
        obj.setSynTboName(synTboName);
    }
    
    public DmsDdpSyn DmsDdpSynDataOnDemand.getSpecificDmsDdpSyn(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DmsDdpSyn obj = data.get(index);
        Integer id = obj.getSynId();
        return dmsDdpSynService.findDmsDdpSyn(id);
    }
    
    public DmsDdpSyn DmsDdpSynDataOnDemand.getRandomDmsDdpSyn() {
        init();
        DmsDdpSyn obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getSynId();
        return dmsDdpSynService.findDmsDdpSyn(id);
    }
    
    public boolean DmsDdpSynDataOnDemand.modifyDmsDdpSyn(DmsDdpSyn obj) {
        return false;
    }
    
    public void DmsDdpSynDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = dmsDdpSynService.findDmsDdpSynEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DmsDdpSyn' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DmsDdpSyn>();
        for (int i = 0; i < 10; i++) {
            DmsDdpSyn obj = getNewTransientDmsDdpSyn(i);
            try {
                dmsDdpSynService.saveDmsDdpSyn(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            dmsDdpSynRepository.flush();
            data.add(obj);
        }
    }
    
}