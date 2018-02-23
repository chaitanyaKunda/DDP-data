// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpSourceSystemDataOnDemand;
import com.agility.ddp.data.domain.DdpSourceSystemIntegrationTest;
import com.agility.ddp.data.domain.DdpSourceSystemRepository;
import com.agility.ddp.data.domain.DdpSourceSystemService;
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

privileged aspect DdpSourceSystemIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpSourceSystemIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpSourceSystemIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpSourceSystemIntegrationTest: @Transactional;
    
    @Autowired
    DdpSourceSystemDataOnDemand DdpSourceSystemIntegrationTest.dod;
    
    @Autowired
    DdpSourceSystemService DdpSourceSystemIntegrationTest.ddpSourceSystemService;
    
    @Autowired
    DdpSourceSystemRepository DdpSourceSystemIntegrationTest.ddpSourceSystemRepository;
    
    @Test
    public void DdpSourceSystemIntegrationTest.testCountAllDdpSourceSystems() {
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to initialize correctly", dod.getRandomDdpSourceSystem());
        long count = ddpSourceSystemService.countAllDdpSourceSystems();
        Assert.assertTrue("Counter for 'DdpSourceSystem' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpSourceSystemIntegrationTest.testFindDdpSourceSystem() {
        DdpSourceSystem obj = dod.getRandomDdpSourceSystem();
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to initialize correctly", obj);
        String id = obj.getSouApplicationCode();
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to provide an identifier", id);
        obj = ddpSourceSystemService.findDdpSourceSystem(id);
        Assert.assertNotNull("Find method for 'DdpSourceSystem' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpSourceSystem' returned the incorrect identifier", id, obj.getSouApplicationCode());
    }
    
    @Test
    public void DdpSourceSystemIntegrationTest.testFindAllDdpSourceSystems() {
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to initialize correctly", dod.getRandomDdpSourceSystem());
        long count = ddpSourceSystemService.countAllDdpSourceSystems();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpSourceSystem', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpSourceSystem> result = ddpSourceSystemService.findAllDdpSourceSystems();
        Assert.assertNotNull("Find all method for 'DdpSourceSystem' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpSourceSystem' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpSourceSystemIntegrationTest.testFindDdpSourceSystemEntries() {
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to initialize correctly", dod.getRandomDdpSourceSystem());
        long count = ddpSourceSystemService.countAllDdpSourceSystems();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpSourceSystem> result = ddpSourceSystemService.findDdpSourceSystemEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpSourceSystem' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpSourceSystem' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpSourceSystemIntegrationTest.testSaveDdpSourceSystem() {
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to initialize correctly", dod.getRandomDdpSourceSystem());
        DdpSourceSystem obj = dod.getNewTransientDdpSourceSystem(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpSourceSystem' identifier to be null", obj.getSouApplicationCode());
        try {
            ddpSourceSystemService.saveDdpSourceSystem(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpSourceSystemRepository.flush();
        Assert.assertNotNull("Expected 'DdpSourceSystem' identifier to no longer be null", obj.getSouApplicationCode());
    }
    
    @Test
    public void DdpSourceSystemIntegrationTest.testDeleteDdpSourceSystem() {
        DdpSourceSystem obj = dod.getRandomDdpSourceSystem();
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to initialize correctly", obj);
        String id = obj.getSouApplicationCode();
        Assert.assertNotNull("Data on demand for 'DdpSourceSystem' failed to provide an identifier", id);
        obj = ddpSourceSystemService.findDdpSourceSystem(id);
        ddpSourceSystemService.deleteDdpSourceSystem(obj);
        ddpSourceSystemRepository.flush();
        Assert.assertNull("Failed to remove 'DdpSourceSystem' with identifier '" + id + "'", ddpSourceSystemService.findDdpSourceSystem(id));
    }
    
}