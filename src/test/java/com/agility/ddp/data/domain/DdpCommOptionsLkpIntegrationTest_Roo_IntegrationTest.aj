// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommOptionsLkpDataOnDemand;
import com.agility.ddp.data.domain.DdpCommOptionsLkpIntegrationTest;
import com.agility.ddp.data.domain.DdpCommOptionsLkpPK;
import com.agility.ddp.data.domain.DdpCommOptionsLkpRepository;
import com.agility.ddp.data.domain.DdpCommOptionsLkpService;
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

privileged aspect DdpCommOptionsLkpIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpCommOptionsLkpIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpCommOptionsLkpIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpCommOptionsLkpIntegrationTest: @Transactional;
    
    @Autowired
    DdpCommOptionsLkpDataOnDemand DdpCommOptionsLkpIntegrationTest.dod;
    
    @Autowired
    DdpCommOptionsLkpService DdpCommOptionsLkpIntegrationTest.ddpCommOptionsLkpService;
    
    @Autowired
    DdpCommOptionsLkpRepository DdpCommOptionsLkpIntegrationTest.ddpCommOptionsLkpRepository;
    
    @Test
    public void DdpCommOptionsLkpIntegrationTest.testCountAllDdpCommOptionsLkps() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to initialize correctly", dod.getRandomDdpCommOptionsLkp());
        long count = ddpCommOptionsLkpService.countAllDdpCommOptionsLkps();
        Assert.assertTrue("Counter for 'DdpCommOptionsLkp' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpCommOptionsLkpIntegrationTest.testFindDdpCommOptionsLkp() {
        DdpCommOptionsLkp obj = dod.getRandomDdpCommOptionsLkp();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to initialize correctly", obj);
        DdpCommOptionsLkpPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to provide an identifier", id);
        obj = ddpCommOptionsLkpService.findDdpCommOptionsLkp(id);
        Assert.assertNotNull("Find method for 'DdpCommOptionsLkp' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpCommOptionsLkp' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DdpCommOptionsLkpIntegrationTest.testFindAllDdpCommOptionsLkps() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to initialize correctly", dod.getRandomDdpCommOptionsLkp());
        long count = ddpCommOptionsLkpService.countAllDdpCommOptionsLkps();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpCommOptionsLkp', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpCommOptionsLkp> result = ddpCommOptionsLkpService.findAllDdpCommOptionsLkps();
        Assert.assertNotNull("Find all method for 'DdpCommOptionsLkp' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpCommOptionsLkp' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpCommOptionsLkpIntegrationTest.testFindDdpCommOptionsLkpEntries() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to initialize correctly", dod.getRandomDdpCommOptionsLkp());
        long count = ddpCommOptionsLkpService.countAllDdpCommOptionsLkps();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpCommOptionsLkp> result = ddpCommOptionsLkpService.findDdpCommOptionsLkpEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpCommOptionsLkp' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpCommOptionsLkp' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpCommOptionsLkpIntegrationTest.testSaveDdpCommOptionsLkp() {
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to initialize correctly", dod.getRandomDdpCommOptionsLkp());
        DdpCommOptionsLkp obj = dod.getNewTransientDdpCommOptionsLkp(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to provide a new transient entity", obj);
        try {
            ddpCommOptionsLkpService.saveDdpCommOptionsLkp(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpCommOptionsLkpRepository.flush();
        Assert.assertNotNull("Expected 'DdpCommOptionsLkp' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DdpCommOptionsLkpIntegrationTest.testDeleteDdpCommOptionsLkp() {
        DdpCommOptionsLkp obj = dod.getRandomDdpCommOptionsLkp();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to initialize correctly", obj);
        DdpCommOptionsLkpPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DdpCommOptionsLkp' failed to provide an identifier", id);
        obj = ddpCommOptionsLkpService.findDdpCommOptionsLkp(id);
        ddpCommOptionsLkpService.deleteDdpCommOptionsLkp(obj);
        ddpCommOptionsLkpRepository.flush();
        Assert.assertNull("Failed to remove 'DdpCommOptionsLkp' with identifier '" + id + "'", ddpCommOptionsLkpService.findDdpCommOptionsLkp(id));
    }
    
}