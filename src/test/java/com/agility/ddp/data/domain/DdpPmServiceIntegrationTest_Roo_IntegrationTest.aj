// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpPmServiceDataOnDemand;
import com.agility.ddp.data.domain.DdpPmServiceIntegrationTest;
import com.agility.ddp.data.domain.DdpPmServiceRepository;
import com.agility.ddp.data.domain.DdpPmServiceService;
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

privileged aspect DdpPmServiceIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpPmServiceIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpPmServiceIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpPmServiceIntegrationTest: @Transactional;
    
    @Autowired
    DdpPmServiceDataOnDemand DdpPmServiceIntegrationTest.dod;
    
    @Autowired
    DdpPmServiceService DdpPmServiceIntegrationTest.ddpPmServiceService;
    
    @Autowired
    DdpPmServiceRepository DdpPmServiceIntegrationTest.ddpPmServiceRepository;
    
    @Test
    public void DdpPmServiceIntegrationTest.testCountAllDdpPmServices() {
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to initialize correctly", dod.getRandomDdpPmService());
        long count = ddpPmServiceService.countAllDdpPmServices();
        Assert.assertTrue("Counter for 'DdpPmService' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpPmServiceIntegrationTest.testFindDdpPmService() {
        DdpPmService obj = dod.getRandomDdpPmService();
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to initialize correctly", obj);
        Integer id = obj.getPsrId();
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to provide an identifier", id);
        obj = ddpPmServiceService.findDdpPmService(id);
        Assert.assertNotNull("Find method for 'DdpPmService' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpPmService' returned the incorrect identifier", id, obj.getPsrId());
    }
    
    @Test
    public void DdpPmServiceIntegrationTest.testFindAllDdpPmServices() {
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to initialize correctly", dod.getRandomDdpPmService());
        long count = ddpPmServiceService.countAllDdpPmServices();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpPmService', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpPmService> result = ddpPmServiceService.findAllDdpPmServices();
        Assert.assertNotNull("Find all method for 'DdpPmService' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpPmService' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpPmServiceIntegrationTest.testFindDdpPmServiceEntries() {
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to initialize correctly", dod.getRandomDdpPmService());
        long count = ddpPmServiceService.countAllDdpPmServices();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpPmService> result = ddpPmServiceService.findDdpPmServiceEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpPmService' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpPmService' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpPmServiceIntegrationTest.testSaveDdpPmService() {
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to initialize correctly", dod.getRandomDdpPmService());
        DdpPmService obj = dod.getNewTransientDdpPmService(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpPmService' identifier to be null", obj.getPsrId());
        try {
            ddpPmServiceService.saveDdpPmService(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpPmServiceRepository.flush();
        Assert.assertNotNull("Expected 'DdpPmService' identifier to no longer be null", obj.getPsrId());
    }
    
    @Test
    public void DdpPmServiceIntegrationTest.testDeleteDdpPmService() {
        DdpPmService obj = dod.getRandomDdpPmService();
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to initialize correctly", obj);
        Integer id = obj.getPsrId();
        Assert.assertNotNull("Data on demand for 'DdpPmService' failed to provide an identifier", id);
        obj = ddpPmServiceService.findDdpPmService(id);
        ddpPmServiceService.deleteDdpPmService(obj);
        ddpPmServiceRepository.flush();
        Assert.assertNull("Failed to remove 'DdpPmService' with identifier '" + id + "'", ddpPmServiceService.findDdpPmService(id));
    }
    
}