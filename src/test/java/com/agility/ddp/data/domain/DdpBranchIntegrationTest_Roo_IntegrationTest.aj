// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpBranchDataOnDemand;
import com.agility.ddp.data.domain.DdpBranchIntegrationTest;
import com.agility.ddp.data.domain.DdpBranchRepository;
import com.agility.ddp.data.domain.DdpBranchService;
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

privileged aspect DdpBranchIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpBranchIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpBranchIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpBranchIntegrationTest: @Transactional;
    
    @Autowired
    DdpBranchDataOnDemand DdpBranchIntegrationTest.dod;
    
    @Autowired
    DdpBranchService DdpBranchIntegrationTest.ddpBranchService;
    
    @Autowired
    DdpBranchRepository DdpBranchIntegrationTest.ddpBranchRepository;
    
    @Test
    public void DdpBranchIntegrationTest.testCountAllDdpBranches() {
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to initialize correctly", dod.getRandomDdpBranch());
        long count = ddpBranchService.countAllDdpBranches();
        Assert.assertTrue("Counter for 'DdpBranch' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpBranchIntegrationTest.testFindDdpBranch() {
        DdpBranch obj = dod.getRandomDdpBranch();
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to initialize correctly", obj);
        String id = obj.getBrnBranchCode();
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to provide an identifier", id);
        obj = ddpBranchService.findDdpBranch(id);
        Assert.assertNotNull("Find method for 'DdpBranch' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpBranch' returned the incorrect identifier", id, obj.getBrnBranchCode());
    }
    
    @Test
    public void DdpBranchIntegrationTest.testFindAllDdpBranches() {
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to initialize correctly", dod.getRandomDdpBranch());
        long count = ddpBranchService.countAllDdpBranches();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpBranch', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpBranch> result = ddpBranchService.findAllDdpBranches();
        Assert.assertNotNull("Find all method for 'DdpBranch' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpBranch' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpBranchIntegrationTest.testFindDdpBranchEntries() {
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to initialize correctly", dod.getRandomDdpBranch());
        long count = ddpBranchService.countAllDdpBranches();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpBranch> result = ddpBranchService.findDdpBranchEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpBranch' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpBranch' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpBranchIntegrationTest.testSaveDdpBranch() {
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to initialize correctly", dod.getRandomDdpBranch());
        DdpBranch obj = dod.getNewTransientDdpBranch(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpBranch' identifier to be null", obj.getBrnBranchCode());
        try {
            ddpBranchService.saveDdpBranch(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpBranchRepository.flush();
        Assert.assertNotNull("Expected 'DdpBranch' identifier to no longer be null", obj.getBrnBranchCode());
    }
    
    @Test
    public void DdpBranchIntegrationTest.testDeleteDdpBranch() {
        DdpBranch obj = dod.getRandomDdpBranch();
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to initialize correctly", obj);
        String id = obj.getBrnBranchCode();
        Assert.assertNotNull("Data on demand for 'DdpBranch' failed to provide an identifier", id);
        obj = ddpBranchService.findDdpBranch(id);
        ddpBranchService.deleteDdpBranch(obj);
        ddpBranchRepository.flush();
        Assert.assertNull("Failed to remove 'DdpBranch' with identifier '" + id + "'", ddpBranchService.findDdpBranch(id));
    }
    
}
