// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportVersionSetupDataOnDemand;
import com.agility.ddp.data.domain.DdpExportVersionSetupIntegrationTest;
import com.agility.ddp.data.domain.DdpExportVersionSetupRepository;
import com.agility.ddp.data.domain.DdpExportVersionSetupService;
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

privileged aspect DdpExportVersionSetupIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpExportVersionSetupIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpExportVersionSetupIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpExportVersionSetupIntegrationTest: @Transactional;
    
    @Autowired
    DdpExportVersionSetupDataOnDemand DdpExportVersionSetupIntegrationTest.dod;
    
    @Autowired
    DdpExportVersionSetupService DdpExportVersionSetupIntegrationTest.ddpExportVersionSetupService;
    
    @Autowired
    DdpExportVersionSetupRepository DdpExportVersionSetupIntegrationTest.ddpExportVersionSetupRepository;
    
    @Test
    public void DdpExportVersionSetupIntegrationTest.testCountAllDdpExportVersionSetups() {
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to initialize correctly", dod.getRandomDdpExportVersionSetup());
        long count = ddpExportVersionSetupService.countAllDdpExportVersionSetups();
        Assert.assertTrue("Counter for 'DdpExportVersionSetup' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpExportVersionSetupIntegrationTest.testFindDdpExportVersionSetup() {
        DdpExportVersionSetup obj = dod.getRandomDdpExportVersionSetup();
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to initialize correctly", obj);
        Integer id = obj.getEvsId();
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to provide an identifier", id);
        obj = ddpExportVersionSetupService.findDdpExportVersionSetup(id);
        Assert.assertNotNull("Find method for 'DdpExportVersionSetup' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpExportVersionSetup' returned the incorrect identifier", id, obj.getEvsId());
    }
    
    @Test
    public void DdpExportVersionSetupIntegrationTest.testFindAllDdpExportVersionSetups() {
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to initialize correctly", dod.getRandomDdpExportVersionSetup());
        long count = ddpExportVersionSetupService.countAllDdpExportVersionSetups();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpExportVersionSetup', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpExportVersionSetup> result = ddpExportVersionSetupService.findAllDdpExportVersionSetups();
        Assert.assertNotNull("Find all method for 'DdpExportVersionSetup' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpExportVersionSetup' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpExportVersionSetupIntegrationTest.testFindDdpExportVersionSetupEntries() {
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to initialize correctly", dod.getRandomDdpExportVersionSetup());
        long count = ddpExportVersionSetupService.countAllDdpExportVersionSetups();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpExportVersionSetup> result = ddpExportVersionSetupService.findDdpExportVersionSetupEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpExportVersionSetup' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpExportVersionSetup' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpExportVersionSetupIntegrationTest.testSaveDdpExportVersionSetup() {
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to initialize correctly", dod.getRandomDdpExportVersionSetup());
        DdpExportVersionSetup obj = dod.getNewTransientDdpExportVersionSetup(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpExportVersionSetup' identifier to be null", obj.getEvsId());
        try {
            ddpExportVersionSetupService.saveDdpExportVersionSetup(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpExportVersionSetupRepository.flush();
        Assert.assertNotNull("Expected 'DdpExportVersionSetup' identifier to no longer be null", obj.getEvsId());
    }
    
    @Test
    public void DdpExportVersionSetupIntegrationTest.testDeleteDdpExportVersionSetup() {
        DdpExportVersionSetup obj = dod.getRandomDdpExportVersionSetup();
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to initialize correctly", obj);
        Integer id = obj.getEvsId();
        Assert.assertNotNull("Data on demand for 'DdpExportVersionSetup' failed to provide an identifier", id);
        obj = ddpExportVersionSetupService.findDdpExportVersionSetup(id);
        ddpExportVersionSetupService.deleteDdpExportVersionSetup(obj);
        ddpExportVersionSetupRepository.flush();
        Assert.assertNull("Failed to remove 'DdpExportVersionSetup' with identifier '" + id + "'", ddpExportVersionSetupService.findDdpExportVersionSetup(id));
    }
    
}
