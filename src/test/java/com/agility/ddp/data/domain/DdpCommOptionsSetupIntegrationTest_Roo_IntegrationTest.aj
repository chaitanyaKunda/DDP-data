// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommOptionsSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpCommOptionsSetupIntegrationTest;
import com.agility.ddp.data.domain.DdpCommOptionsSetupRepository;
import com.agility.ddp.data.domain.DdpCommOptionsSetupService;
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

privileged aspect DdpCommOptionsSetupIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpCommOptionsSetupIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpCommOptionsSetupIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpCommOptionsSetupIntegrationTest: @Transactional;
    
    @Autowired
    DdpCommOptionsSetupDataOnDemand DdpCommOptionsSetupIntegrationTest.dod;
    
    @Autowired
    DdpCommOptionsSetupService DdpCommOptionsSetupIntegrationTest.ddpCommOptionsSetupService;
    
    @Autowired
    DdpCommOptionsSetupRepository DdpCommOptionsSetupIntegrationTest.ddpCommOptionsSetupRepository;
    
    @Test
    public void DdpCommOptionsSetupIntegrationTest.testCountAllDdpCommOptionsSetups() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to initialize correctly", dod.getRandomDdpCommOptionsSetup());
        long count = ddpCommOptionsSetupService.countAllDdpCommOptionsSetups();
        Assert.assertTrue("Counter for 'DdpCommOptionsSetup' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpCommOptionsSetupIntegrationTest.testFindDdpCommOptionsSetup() {
        DdpCommOptionsSetup obj = dod.getRandomDdpCommOptionsSetup();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to initialize correctly", obj);
        Integer id = obj.getCopId();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to provide an identifier", id);
        obj = ddpCommOptionsSetupService.findDdpCommOptionsSetup(id);
        Assert.assertNotNull("Find method for 'DdpCommOptionsSetup' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpCommOptionsSetup' returned the incorrect identifier", id, obj.getCopId());
    }
    
    @Test
    public void DdpCommOptionsSetupIntegrationTest.testFindAllDdpCommOptionsSetups() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to initialize correctly", dod.getRandomDdpCommOptionsSetup());
        long count = ddpCommOptionsSetupService.countAllDdpCommOptionsSetups();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpCommOptionsSetup', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpCommOptionsSetup> result = ddpCommOptionsSetupService.findAllDdpCommOptionsSetups();
        Assert.assertNotNull("Find all method for 'DdpCommOptionsSetup' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpCommOptionsSetup' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpCommOptionsSetupIntegrationTest.testFindDdpCommOptionsSetupEntries() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to initialize correctly", dod.getRandomDdpCommOptionsSetup());
        long count = ddpCommOptionsSetupService.countAllDdpCommOptionsSetups();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpCommOptionsSetup> result = ddpCommOptionsSetupService.findDdpCommOptionsSetupEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpCommOptionsSetup' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpCommOptionsSetup' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpCommOptionsSetupIntegrationTest.testSaveDdpCommOptionsSetup() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to initialize correctly", dod.getRandomDdpCommOptionsSetup());
        DdpCommOptionsSetup obj = dod.getNewTransientDdpCommOptionsSetup(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpCommOptionsSetup' identifier to be null", obj.getCopId());
        try {
            ddpCommOptionsSetupService.saveDdpCommOptionsSetup(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpCommOptionsSetupRepository.flush();
        Assert.assertNotNull("Expected 'DdpCommOptionsSetup' identifier to no longer be null", obj.getCopId());
    }
    
    @Test
    public void DdpCommOptionsSetupIntegrationTest.testDeleteDdpCommOptionsSetup() {
        DdpCommOptionsSetup obj = dod.getRandomDdpCommOptionsSetup();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to initialize correctly", obj);
        Integer id = obj.getCopId();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsSetup' failed to provide an identifier", id);
        obj = ddpCommOptionsSetupService.findDdpCommOptionsSetup(id);
        ddpCommOptionsSetupService.deleteDdpCommOptionsSetup(obj);
        ddpCommOptionsSetupRepository.flush();
        Assert.assertNull("Failed to remove 'DdpCommOptionsSetup' with identifier '" + id + "'", ddpCommOptionsSetupService.findDdpCommOptionsSetup(id));
    }
    
}
