// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpDoctypeDataOnDemand;
import com.agility.ddp.data.domain.DdpDoctypeIntegrationTest;
import com.agility.ddp.data.domain.DdpDoctypeRepository;
import com.agility.ddp.data.domain.DdpDoctypeService;
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

privileged aspect DdpDoctypeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpDoctypeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpDoctypeIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpDoctypeIntegrationTest: @Transactional;
    
    @Autowired
    DdpDoctypeDataOnDemand DdpDoctypeIntegrationTest.dod;
    
    @Autowired
    DdpDoctypeService DdpDoctypeIntegrationTest.ddpDoctypeService;
    
    @Autowired
    DdpDoctypeRepository DdpDoctypeIntegrationTest.ddpDoctypeRepository;
    
    @Test
    public void DdpDoctypeIntegrationTest.testCountAllDdpDoctypes() {
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to initialize correctly", dod.getRandomDdpDoctype());
        long count = ddpDoctypeService.countAllDdpDoctypes();
        Assert.assertTrue("Counter for 'DdpDoctype' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpDoctypeIntegrationTest.testFindDdpDoctype() {
        DdpDoctype obj = dod.getRandomDdpDoctype();
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to initialize correctly", obj);
        String id = obj.getDtyDocTypeCode();
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to provide an identifier", id);
        obj = ddpDoctypeService.findDdpDoctype(id);
        Assert.assertNotNull("Find method for 'DdpDoctype' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpDoctype' returned the incorrect identifier", id, obj.getDtyDocTypeCode());
    }
    
    @Test
    public void DdpDoctypeIntegrationTest.testFindAllDdpDoctypes() {
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to initialize correctly", dod.getRandomDdpDoctype());
        long count = ddpDoctypeService.countAllDdpDoctypes();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpDoctype', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpDoctype> result = ddpDoctypeService.findAllDdpDoctypes();
        Assert.assertNotNull("Find all method for 'DdpDoctype' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpDoctype' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpDoctypeIntegrationTest.testFindDdpDoctypeEntries() {
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to initialize correctly", dod.getRandomDdpDoctype());
        long count = ddpDoctypeService.countAllDdpDoctypes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpDoctype> result = ddpDoctypeService.findDdpDoctypeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpDoctype' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpDoctype' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpDoctypeIntegrationTest.testSaveDdpDoctype() {
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to initialize correctly", dod.getRandomDdpDoctype());
        DdpDoctype obj = dod.getNewTransientDdpDoctype(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpDoctype' identifier to be null", obj.getDtyDocTypeCode());
        try {
            ddpDoctypeService.saveDdpDoctype(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpDoctypeRepository.flush();
        Assert.assertNotNull("Expected 'DdpDoctype' identifier to no longer be null", obj.getDtyDocTypeCode());
    }
    
    @Test
    public void DdpDoctypeIntegrationTest.testDeleteDdpDoctype() {
        DdpDoctype obj = dod.getRandomDdpDoctype();
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to initialize correctly", obj);
        String id = obj.getDtyDocTypeCode();
        Assert.assertNotNull("Data on demand for 'DdpDoctype' failed to provide an identifier", id);
        obj = ddpDoctypeService.findDdpDoctype(id);
        ddpDoctypeService.deleteDdpDoctype(obj);
        ddpDoctypeRepository.flush();
        Assert.assertNull("Failed to remove 'DdpDoctype' with identifier '" + id + "'", ddpDoctypeService.findDdpDoctype(id));
    }
    
}