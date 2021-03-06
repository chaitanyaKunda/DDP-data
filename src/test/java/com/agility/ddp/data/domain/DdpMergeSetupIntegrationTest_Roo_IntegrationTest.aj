// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpMergeSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpMergeSetupIntegrationTest;
import com.agility.ddp.data.domain.DdpMergeSetupRepository;
import com.agility.ddp.data.domain.DdpMergeSetupService;
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

privileged aspect DdpMergeSetupIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpMergeSetupIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpMergeSetupIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpMergeSetupIntegrationTest: @Transactional;
    
    @Autowired
    DdpMergeSetupDataOnDemand DdpMergeSetupIntegrationTest.dod;
    
    @Autowired
    DdpMergeSetupService DdpMergeSetupIntegrationTest.ddpMergeSetupService;
    
    @Autowired
    DdpMergeSetupRepository DdpMergeSetupIntegrationTest.ddpMergeSetupRepository;
    
    @Test
    public void DdpMergeSetupIntegrationTest.testCountAllDdpMergeSetups() {
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to initialize correctly", dod.getRandomDdpMergeSetup());
        long count = ddpMergeSetupService.countAllDdpMergeSetups();
        Assert.assertTrue("Counter for 'DdpMergeSetup' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpMergeSetupIntegrationTest.testFindDdpMergeSetup() {
        DdpMergeSetup obj = dod.getRandomDdpMergeSetup();
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to initialize correctly", obj);
        Integer id = obj.getMtsMergeId();
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to provide an identifier", id);
        obj = ddpMergeSetupService.findDdpMergeSetup(id);
        Assert.assertNotNull("Find method for 'DdpMergeSetup' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpMergeSetup' returned the incorrect identifier", id, obj.getMtsMergeId());
    }
    
    @Test
    public void DdpMergeSetupIntegrationTest.testFindAllDdpMergeSetups() {
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to initialize correctly", dod.getRandomDdpMergeSetup());
        long count = ddpMergeSetupService.countAllDdpMergeSetups();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpMergeSetup', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpMergeSetup> result = ddpMergeSetupService.findAllDdpMergeSetups();
        Assert.assertNotNull("Find all method for 'DdpMergeSetup' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpMergeSetup' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpMergeSetupIntegrationTest.testFindDdpMergeSetupEntries() {
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to initialize correctly", dod.getRandomDdpMergeSetup());
        long count = ddpMergeSetupService.countAllDdpMergeSetups();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpMergeSetup> result = ddpMergeSetupService.findDdpMergeSetupEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpMergeSetup' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpMergeSetup' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpMergeSetupIntegrationTest.testSaveDdpMergeSetup() {
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to initialize correctly", dod.getRandomDdpMergeSetup());
        DdpMergeSetup obj = dod.getNewTransientDdpMergeSetup(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpMergeSetup' identifier to be null", obj.getMtsMergeId());
        try {
            ddpMergeSetupService.saveDdpMergeSetup(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpMergeSetupRepository.flush();
        Assert.assertNotNull("Expected 'DdpMergeSetup' identifier to no longer be null", obj.getMtsMergeId());
    }
    
    @Test
    public void DdpMergeSetupIntegrationTest.testDeleteDdpMergeSetup() {
        DdpMergeSetup obj = dod.getRandomDdpMergeSetup();
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to initialize correctly", obj);
        Integer id = obj.getMtsMergeId();
        Assert.assertNotNull("Data on demand for 'DdpMergeSetup' failed to provide an identifier", id);
        obj = ddpMergeSetupService.findDdpMergeSetup(id);
        ddpMergeSetupService.deleteDdpMergeSetup(obj);
        ddpMergeSetupRepository.flush();
        Assert.assertNull("Failed to remove 'DdpMergeSetup' with identifier '" + id + "'", ddpMergeSetupService.findDdpMergeSetup(id));
    }
    
}
