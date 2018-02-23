// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpUserDataOnDemand;
import com.agility.ddp.data.domain.DdpUserIntegrationTest;
import com.agility.ddp.data.domain.DdpUserRepository;
import com.agility.ddp.data.domain.DdpUserService;
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

privileged aspect DdpUserIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpUserIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpUserIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpUserIntegrationTest: @Transactional;
    
    @Autowired
    DdpUserDataOnDemand DdpUserIntegrationTest.dod;
    
    @Autowired
    DdpUserService DdpUserIntegrationTest.ddpUserService;
    
    @Autowired
    DdpUserRepository DdpUserIntegrationTest.ddpUserRepository;
    
    @Test
    public void DdpUserIntegrationTest.testCountAllDdpUsers() {
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to initialize correctly", dod.getRandomDdpUser());
        long count = ddpUserService.countAllDdpUsers();
        Assert.assertTrue("Counter for 'DdpUser' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpUserIntegrationTest.testFindDdpUser() {
        DdpUser obj = dod.getRandomDdpUser();
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to initialize correctly", obj);
        Integer id = obj.getUsrId();
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to provide an identifier", id);
        obj = ddpUserService.findDdpUser(id);
        Assert.assertNotNull("Find method for 'DdpUser' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpUser' returned the incorrect identifier", id, obj.getUsrId());
    }
    
    @Test
    public void DdpUserIntegrationTest.testFindAllDdpUsers() {
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to initialize correctly", dod.getRandomDdpUser());
        long count = ddpUserService.countAllDdpUsers();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpUser', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpUser> result = ddpUserService.findAllDdpUsers();
        Assert.assertNotNull("Find all method for 'DdpUser' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpUser' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpUserIntegrationTest.testFindDdpUserEntries() {
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to initialize correctly", dod.getRandomDdpUser());
        long count = ddpUserService.countAllDdpUsers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpUser> result = ddpUserService.findDdpUserEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpUser' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpUser' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpUserIntegrationTest.testSaveDdpUser() {
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to initialize correctly", dod.getRandomDdpUser());
        DdpUser obj = dod.getNewTransientDdpUser(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpUser' identifier to be null", obj.getUsrId());
        try {
            ddpUserService.saveDdpUser(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpUserRepository.flush();
        Assert.assertNotNull("Expected 'DdpUser' identifier to no longer be null", obj.getUsrId());
    }
    
    @Test
    public void DdpUserIntegrationTest.testDeleteDdpUser() {
        DdpUser obj = dod.getRandomDdpUser();
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to initialize correctly", obj);
        Integer id = obj.getUsrId();
        Assert.assertNotNull("Data on demand for 'DdpUser' failed to provide an identifier", id);
        obj = ddpUserService.findDdpUser(id);
        ddpUserService.deleteDdpUser(obj);
        ddpUserRepository.flush();
        Assert.assertNull("Failed to remove 'DdpUser' with identifier '" + id + "'", ddpUserService.findDdpUser(id));
    }
    
}
