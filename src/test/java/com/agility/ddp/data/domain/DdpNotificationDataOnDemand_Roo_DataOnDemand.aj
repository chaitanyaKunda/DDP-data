// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpNotification;
import com.agility.ddp.data.domain.DdpNotificationDataOnDemand;
import com.agility.ddp.data.domain.DdpNotificationRepository;
import com.agility.ddp.data.domain.DdpNotificationService;
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

privileged aspect DdpNotificationDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DdpNotificationDataOnDemand: @Component;
    
    private Random DdpNotificationDataOnDemand.rnd = new SecureRandom();
    
    private List<DdpNotification> DdpNotificationDataOnDemand.data;
    
    @Autowired
    DdpNotificationService DdpNotificationDataOnDemand.ddpNotificationService;
    
    @Autowired
    DdpNotificationRepository DdpNotificationDataOnDemand.ddpNotificationRepository;
    
    public DdpNotification DdpNotificationDataOnDemand.getNewTransientDdpNotification(int index) {
        DdpNotification obj = new DdpNotification();
        setNotCreatedBy(obj, index);
        setNotCreatedDate(obj, index);
        setNotFailureEmailAddress(obj, index);
        setNotModifiedBy(obj, index);
        setNotModifiedDate(obj, index);
        setNotStatus(obj, index);
        setNotSuccessEmailAddress(obj, index);
        return obj;
    }
    
    public void DdpNotificationDataOnDemand.setNotCreatedBy(DdpNotification obj, int index) {
        String notCreatedBy = "notCreatedBy_" + index;
        if (notCreatedBy.length() > 120) {
            notCreatedBy = notCreatedBy.substring(0, 120);
        }
        obj.setNotCreatedBy(notCreatedBy);
    }
    
    public void DdpNotificationDataOnDemand.setNotCreatedDate(DdpNotification obj, int index) {
        Calendar notCreatedDate = Calendar.getInstance();
        obj.setNotCreatedDate(notCreatedDate);
    }
    
    public void DdpNotificationDataOnDemand.setNotFailureEmailAddress(DdpNotification obj, int index) {
        String notFailureEmailAddress = "foo" + index + "@bar.com";
        if (notFailureEmailAddress.length() > 512) {
            notFailureEmailAddress = notFailureEmailAddress.substring(0, 512);
        }
        obj.setNotFailureEmailAddress(notFailureEmailAddress);
    }
    
    public void DdpNotificationDataOnDemand.setNotModifiedBy(DdpNotification obj, int index) {
        String notModifiedBy = "notModifiedBy_" + index;
        if (notModifiedBy.length() > 120) {
            notModifiedBy = notModifiedBy.substring(0, 120);
        }
        obj.setNotModifiedBy(notModifiedBy);
    }
    
    public void DdpNotificationDataOnDemand.setNotModifiedDate(DdpNotification obj, int index) {
        Calendar notModifiedDate = Calendar.getInstance();
        obj.setNotModifiedDate(notModifiedDate);
    }
    
    public void DdpNotificationDataOnDemand.setNotStatus(DdpNotification obj, int index) {
        Integer notStatus = new Integer(index);
        obj.setNotStatus(notStatus);
    }
    
    public void DdpNotificationDataOnDemand.setNotSuccessEmailAddress(DdpNotification obj, int index) {
        String notSuccessEmailAddress = "foo" + index + "@bar.com";
        if (notSuccessEmailAddress.length() > 512) {
            notSuccessEmailAddress = notSuccessEmailAddress.substring(0, 512);
        }
        obj.setNotSuccessEmailAddress(notSuccessEmailAddress);
    }
    
    public DdpNotification DdpNotificationDataOnDemand.getSpecificDdpNotification(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DdpNotification obj = data.get(index);
        Integer id = obj.getNotId();
        return ddpNotificationService.findDdpNotification(id);
    }
    
    public DdpNotification DdpNotificationDataOnDemand.getRandomDdpNotification() {
        init();
        DdpNotification obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getNotId();
        return ddpNotificationService.findDdpNotification(id);
    }
    
    public boolean DdpNotificationDataOnDemand.modifyDdpNotification(DdpNotification obj) {
        return false;
    }
    
    public void DdpNotificationDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ddpNotificationService.findDdpNotificationEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DdpNotification' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DdpNotification>();
        for (int i = 0; i < 10; i++) {
            DdpNotification obj = getNewTransientDdpNotification(i);
            try {
                ddpNotificationService.saveDdpNotification(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            ddpNotificationRepository.flush();
            data.add(obj);
        }
    }
    
}
