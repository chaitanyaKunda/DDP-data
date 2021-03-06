// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpRoleSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpRoleSetupIntegrationTest;
import com.agility.ddp.data.domain.DdpRoleSetupRepository;
import com.agility.ddp.data.domain.DdpRoleSetupService;
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

privileged aspect DdpRoleSetupIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpRoleSetupIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpRoleSetupIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpRoleSetupIntegrationTest: @Transactional;
    
    @Autowired
    DdpRoleSetupDataOnDemand DdpRoleSetupIntegrationTest.dod;
    
    @Autowired
    DdpRoleSetupService DdpRoleSetupIntegrationTest.ddpRoleSetupService;
    
    @Autowired
    DdpRoleSetupRepository DdpRoleSetupIntegrationTest.ddpRoleSetupRepository;
    
    @Test
    public void DdpRoleSetupIntegrationTest.testCountAllDdpRoleSetups() {
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to initialize correctly", dod.getRandomDdpRoleSetup());
        long count = ddpRoleSetupService.countAllDdpRoleSetups();
        Assert.assertTrue("Counter for 'DdpRoleSetup' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpRoleSetupIntegrationTest.testFindDdpRoleSetup() {
        DdpRoleSetup obj = dod.getRandomDdpRoleSetup();
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to initialize correctly", obj);
        Integer id = obj.getRlsId();
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to provide an identifier", id);
        obj = ddpRoleSetupService.findDdpRoleSetup(id);
        Assert.assertNotNull("Find method for 'DdpRoleSetup' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpRoleSetup' returned the incorrect identifier", id, obj.getRlsId());
    }
    
    @Test
    public void DdpRoleSetupIntegrationTest.testFindAllDdpRoleSetups() {
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to initialize correctly", dod.getRandomDdpRoleSetup());
        long count = ddpRoleSetupService.countAllDdpRoleSetups();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpRoleSetup', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpRoleSetup> result = ddpRoleSetupService.findAllDdpRoleSetups();
        Assert.assertNotNull("Find all method for 'DdpRoleSetup' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpRoleSetup' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpRoleSetupIntegrationTest.testFindDdpRoleSetupEntries() {
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to initialize correctly", dod.getRandomDdpRoleSetup());
        long count = ddpRoleSetupService.countAllDdpRoleSetups();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpRoleSetup> result = ddpRoleSetupService.findDdpRoleSetupEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpRoleSetup' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpRoleSetup' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpRoleSetupIntegrationTest.testSaveDdpRoleSetup() {
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to initialize correctly", dod.getRandomDdpRoleSetup());
        DdpRoleSetup obj = dod.getNewTransientDdpRoleSetup(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpRoleSetup' identifier to be null", obj.getRlsId());
        try {
            ddpRoleSetupService.saveDdpRoleSetup(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpRoleSetupRepository.flush();
        Assert.assertNotNull("Expected 'DdpRoleSetup' identifier to no longer be null", obj.getRlsId());
    }
    
    @Test
    public void DdpRoleSetupIntegrationTest.testDeleteDdpRoleSetup() {
        DdpRoleSetup obj = dod.getRandomDdpRoleSetup();
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to initialize correctly", obj);
        Integer id = obj.getRlsId();
        Assert.assertNotNull("Data on demand for 'DdpRoleSetup' failed to provide an identifier", id);
        obj = ddpRoleSetupService.findDdpRoleSetup(id);
        ddpRoleSetupService.deleteDdpRoleSetup(obj);
        ddpRoleSetupRepository.flush();
        Assert.assertNull("Failed to remove 'DdpRoleSetup' with identifier '" + id + "'", ddpRoleSetupService.findDdpRoleSetup(id));
    }
    
}
