// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommFtpDataOnDemand;
import com.agility.ddp.data.domain.DdpCommFtpIntegrationTest;
import com.agility.ddp.data.domain.DdpCommFtpRepository;
import com.agility.ddp.data.domain.DdpCommFtpService;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DdpCommFtpIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpCommFtpIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpCommFtpIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpCommFtpIntegrationTest: @Transactional;
    
    @Autowired
    DdpCommFtpDataOnDemand DdpCommFtpIntegrationTest.dod;
    
    @Autowired
    DdpCommFtpService DdpCommFtpIntegrationTest.ddpCommFtpService;
    
    @Autowired
    DdpCommFtpRepository DdpCommFtpIntegrationTest.ddpCommFtpRepository;
    
    @Test
    public void DdpCommFtpIntegrationTest.testCountAllDdpCommFtps() {
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to initialize correctly", dod.getRandomDdpCommFtp());
        long count = ddpCommFtpService.countAllDdpCommFtps();
        Assert.assertTrue("Counter for 'DdpCommFtp' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpCommFtpIntegrationTest.testFindDdpCommFtp() {
        DdpCommFtp obj = dod.getRandomDdpCommFtp();
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to initialize correctly", obj);
        Long id = obj.getCftFtpId();
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to provide an identifier", id);
        obj = ddpCommFtpService.findDdpCommFtp(id);
        Assert.assertNotNull("Find method for 'DdpCommFtp' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpCommFtp' returned the incorrect identifier", id, obj.getCftFtpId());
    }
    
    @Test
    public void DdpCommFtpIntegrationTest.testFindAllDdpCommFtps() {
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to initialize correctly", dod.getRandomDdpCommFtp());
        long count = ddpCommFtpService.countAllDdpCommFtps();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpCommFtp', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpCommFtp> result = ddpCommFtpService.findAllDdpCommFtps();
        Assert.assertNotNull("Find all method for 'DdpCommFtp' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpCommFtp' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpCommFtpIntegrationTest.testFindDdpCommFtpEntries() {
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to initialize correctly", dod.getRandomDdpCommFtp());
        long count = ddpCommFtpService.countAllDdpCommFtps();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpCommFtp> result = ddpCommFtpService.findDdpCommFtpEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpCommFtp' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpCommFtp' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpCommFtpIntegrationTest.testSaveDdpCommFtp() {
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to initialize correctly", dod.getRandomDdpCommFtp());
        DdpCommFtp obj = dod.getNewTransientDdpCommFtp(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpCommFtp' identifier to be null", obj.getCftFtpId());
        try {
            ddpCommFtpService.saveDdpCommFtp(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpCommFtpRepository.flush();
        Assert.assertNotNull("Expected 'DdpCommFtp' identifier to no longer be null", obj.getCftFtpId());
    }
    
    @Test
    public void DdpCommFtpIntegrationTest.testDeleteDdpCommFtp() {
        DdpCommFtp obj = dod.getRandomDdpCommFtp();
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to initialize correctly", obj);
        Long id = obj.getCftFtpId();
        Assert.assertNotNull("Data on demand for 'DdpCommFtp' failed to provide an identifier", id);
        obj = ddpCommFtpService.findDdpCommFtp(id);
        ddpCommFtpService.deleteDdpCommFtp(obj);
        ddpCommFtpRepository.flush();
        Assert.assertNull("Failed to remove 'DdpCommFtp' with identifier '" + id + "'", ddpCommFtpService.findDdpCommFtp(id));
    }
    
}
