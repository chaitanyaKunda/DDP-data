// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCategorizedAuditTxnDataOnDemand;
import com.agility.ddp.data.domain.DdpCategorizedAuditTxnIntegrationTest;
import com.agility.ddp.data.domain.DdpCategorizedAuditTxnRepository;
import com.agility.ddp.data.domain.DdpCategorizedAuditTxnService;
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

privileged aspect DdpCategorizedAuditTxnIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpCategorizedAuditTxnIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpCategorizedAuditTxnIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpCategorizedAuditTxnIntegrationTest: @Transactional;
    
    @Autowired
    DdpCategorizedAuditTxnDataOnDemand DdpCategorizedAuditTxnIntegrationTest.dod;
    
    @Autowired
    DdpCategorizedAuditTxnService DdpCategorizedAuditTxnIntegrationTest.ddpCategorizedAuditTxnService;
    
    @Autowired
    DdpCategorizedAuditTxnRepository DdpCategorizedAuditTxnIntegrationTest.ddpCategorizedAuditTxnRepository;
    
    @Test
    public void DdpCategorizedAuditTxnIntegrationTest.testCountAllDdpCategorizedAuditTxns() {
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to initialize correctly", dod.getRandomDdpCategorizedAuditTxn());
        long count = ddpCategorizedAuditTxnService.countAllDdpCategorizedAuditTxns();
        Assert.assertTrue("Counter for 'DdpCategorizedAuditTxn' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpCategorizedAuditTxnIntegrationTest.testFindDdpCategorizedAuditTxn() {
        DdpCategorizedAuditTxn obj = dod.getRandomDdpCategorizedAuditTxn();
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to initialize correctly", obj);
        Integer id = obj.getCaxId();
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to provide an identifier", id);
        obj = ddpCategorizedAuditTxnService.findDdpCategorizedAuditTxn(id);
        Assert.assertNotNull("Find method for 'DdpCategorizedAuditTxn' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpCategorizedAuditTxn' returned the incorrect identifier", id, obj.getCaxId());
    }
    
    @Test
    public void DdpCategorizedAuditTxnIntegrationTest.testFindAllDdpCategorizedAuditTxns() {
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to initialize correctly", dod.getRandomDdpCategorizedAuditTxn());
        long count = ddpCategorizedAuditTxnService.countAllDdpCategorizedAuditTxns();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpCategorizedAuditTxn', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpCategorizedAuditTxn> result = ddpCategorizedAuditTxnService.findAllDdpCategorizedAuditTxns();
        Assert.assertNotNull("Find all method for 'DdpCategorizedAuditTxn' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpCategorizedAuditTxn' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpCategorizedAuditTxnIntegrationTest.testFindDdpCategorizedAuditTxnEntries() {
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to initialize correctly", dod.getRandomDdpCategorizedAuditTxn());
        long count = ddpCategorizedAuditTxnService.countAllDdpCategorizedAuditTxns();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpCategorizedAuditTxn> result = ddpCategorizedAuditTxnService.findDdpCategorizedAuditTxnEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpCategorizedAuditTxn' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpCategorizedAuditTxn' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpCategorizedAuditTxnIntegrationTest.testSaveDdpCategorizedAuditTxn() {
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to initialize correctly", dod.getRandomDdpCategorizedAuditTxn());
        DdpCategorizedAuditTxn obj = dod.getNewTransientDdpCategorizedAuditTxn(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpCategorizedAuditTxn' identifier to be null", obj.getCaxId());
        try {
            ddpCategorizedAuditTxnService.saveDdpCategorizedAuditTxn(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpCategorizedAuditTxnRepository.flush();
        Assert.assertNotNull("Expected 'DdpCategorizedAuditTxn' identifier to no longer be null", obj.getCaxId());
    }
    
    @Test
    public void DdpCategorizedAuditTxnIntegrationTest.testDeleteDdpCategorizedAuditTxn() {
        DdpCategorizedAuditTxn obj = dod.getRandomDdpCategorizedAuditTxn();
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to initialize correctly", obj);
        Integer id = obj.getCaxId();
        Assert.assertNotNull("Data on demand for 'DdpCategorizedAuditTxn' failed to provide an identifier", id);
        obj = ddpCategorizedAuditTxnService.findDdpCategorizedAuditTxn(id);
        ddpCategorizedAuditTxnService.deleteDdpCategorizedAuditTxn(obj);
        ddpCategorizedAuditTxnRepository.flush();
        Assert.assertNull("Failed to remove 'DdpCategorizedAuditTxn' with identifier '" + id + "'", ddpCategorizedAuditTxnService.findDdpCategorizedAuditTxn(id));
    }
    
}
