// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDocnameConvDataOnDemand;
import com.agility.ddp.data.domain.DdpDocnameConvIntegrationTest;
import com.agility.ddp.data.domain.DdpDocnameConvRepository;
import com.agility.ddp.data.domain.DdpDocnameConvService;
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

privileged aspect DdpDocnameConvIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpDocnameConvIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpDocnameConvIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpDocnameConvIntegrationTest: @Transactional;
    
    @Autowired
    DdpDocnameConvDataOnDemand DdpDocnameConvIntegrationTest.dod;
    
    @Autowired
    DdpDocnameConvService DdpDocnameConvIntegrationTest.ddpDocnameConvService;
    
    @Autowired
    DdpDocnameConvRepository DdpDocnameConvIntegrationTest.ddpDocnameConvRepository;
    
    @Test
    public void DdpDocnameConvIntegrationTest.testCountAllDdpDocnameConvs() {
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to initialize correctly", dod.getRandomDdpDocnameConv());
        long count = ddpDocnameConvService.countAllDdpDocnameConvs();
        Assert.assertTrue("Counter for 'DdpDocnameConv' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpDocnameConvIntegrationTest.testFindDdpDocnameConv() {
        DdpDocnameConv obj = dod.getRandomDdpDocnameConv();
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to initialize correctly", obj);
        Integer id = obj.getDcvId();
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to provide an identifier", id);
        obj = ddpDocnameConvService.findDdpDocnameConv(id);
        Assert.assertNotNull("Find method for 'DdpDocnameConv' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpDocnameConv' returned the incorrect identifier", id, obj.getDcvId());
    }
    
    @Test
    public void DdpDocnameConvIntegrationTest.testFindAllDdpDocnameConvs() {
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to initialize correctly", dod.getRandomDdpDocnameConv());
        long count = ddpDocnameConvService.countAllDdpDocnameConvs();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpDocnameConv', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpDocnameConv> result = ddpDocnameConvService.findAllDdpDocnameConvs();
        Assert.assertNotNull("Find all method for 'DdpDocnameConv' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpDocnameConv' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpDocnameConvIntegrationTest.testFindDdpDocnameConvEntries() {
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to initialize correctly", dod.getRandomDdpDocnameConv());
        long count = ddpDocnameConvService.countAllDdpDocnameConvs();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpDocnameConv> result = ddpDocnameConvService.findDdpDocnameConvEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpDocnameConv' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpDocnameConv' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpDocnameConvIntegrationTest.testSaveDdpDocnameConv() {
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to initialize correctly", dod.getRandomDdpDocnameConv());
        DdpDocnameConv obj = dod.getNewTransientDdpDocnameConv(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpDocnameConv' identifier to be null", obj.getDcvId());
        try {
            ddpDocnameConvService.saveDdpDocnameConv(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpDocnameConvRepository.flush();
        Assert.assertNotNull("Expected 'DdpDocnameConv' identifier to no longer be null", obj.getDcvId());
    }
    
    @Test
    public void DdpDocnameConvIntegrationTest.testDeleteDdpDocnameConv() {
        DdpDocnameConv obj = dod.getRandomDdpDocnameConv();
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to initialize correctly", obj);
        Integer id = obj.getDcvId();
        Assert.assertNotNull("Data on demand for 'DdpDocnameConv' failed to provide an identifier", id);
        obj = ddpDocnameConvService.findDdpDocnameConv(id);
        ddpDocnameConvService.deleteDdpDocnameConv(obj);
        ddpDocnameConvRepository.flush();
        Assert.assertNull("Failed to remove 'DdpDocnameConv' with identifier '" + id + "'", ddpDocnameConvService.findDdpDocnameConv(id));
    }
    
}
