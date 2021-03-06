// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpPartyDataOnDemand;
import com.agility.ddp.data.domain.DdpPartyIntegrationTest;
import com.agility.ddp.data.domain.DdpPartyRepository;
import com.agility.ddp.data.domain.DdpPartyService;
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

privileged aspect DdpPartyIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpPartyIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpPartyIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpPartyIntegrationTest: @Transactional;
    
    @Autowired
    DdpPartyDataOnDemand DdpPartyIntegrationTest.dod;
    
    @Autowired
    DdpPartyService DdpPartyIntegrationTest.ddpPartyService;
    
    @Autowired
    DdpPartyRepository DdpPartyIntegrationTest.ddpPartyRepository;
    
    @Test
    public void DdpPartyIntegrationTest.testCountAllDdpPartys() {
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to initialize correctly", dod.getRandomDdpParty());
        long count = ddpPartyService.countAllDdpPartys();
        Assert.assertTrue("Counter for 'DdpParty' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpPartyIntegrationTest.testFindDdpParty() {
        DdpParty obj = dod.getRandomDdpParty();
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to initialize correctly", obj);
        String id = obj.getPtyPartyCode();
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to provide an identifier", id);
        obj = ddpPartyService.findDdpParty(id);
        Assert.assertNotNull("Find method for 'DdpParty' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpParty' returned the incorrect identifier", id, obj.getPtyPartyCode());
    }
    
    @Test
    public void DdpPartyIntegrationTest.testFindAllDdpPartys() {
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to initialize correctly", dod.getRandomDdpParty());
        long count = ddpPartyService.countAllDdpPartys();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpParty', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpParty> result = ddpPartyService.findAllDdpPartys();
        Assert.assertNotNull("Find all method for 'DdpParty' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpParty' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpPartyIntegrationTest.testFindDdpPartyEntries() {
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to initialize correctly", dod.getRandomDdpParty());
        long count = ddpPartyService.countAllDdpPartys();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpParty> result = ddpPartyService.findDdpPartyEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpParty' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpParty' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpPartyIntegrationTest.testSaveDdpParty() {
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to initialize correctly", dod.getRandomDdpParty());
        DdpParty obj = dod.getNewTransientDdpParty(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpParty' identifier to be null", obj.getPtyPartyCode());
        try {
            ddpPartyService.saveDdpParty(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpPartyRepository.flush();
        Assert.assertNotNull("Expected 'DdpParty' identifier to no longer be null", obj.getPtyPartyCode());
    }
    
    @Test
    public void DdpPartyIntegrationTest.testDeleteDdpParty() {
        DdpParty obj = dod.getRandomDdpParty();
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to initialize correctly", obj);
        String id = obj.getPtyPartyCode();
        Assert.assertNotNull("Data on demand for 'DdpParty' failed to provide an identifier", id);
        obj = ddpPartyService.findDdpParty(id);
        ddpPartyService.deleteDdpParty(obj);
        ddpPartyRepository.flush();
        Assert.assertNull("Failed to remove 'DdpParty' with identifier '" + id + "'", ddpPartyService.findDdpParty(id));
    }
    
}
