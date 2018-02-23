// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpEmailAttachmentDataOnDemand;
import com.agility.ddp.data.domain.DdpEmailAttachmentIntegrationTest;
import com.agility.ddp.data.domain.DdpEmailAttachmentRepository;
import com.agility.ddp.data.domain.DdpEmailAttachmentService;
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

privileged aspect DdpEmailAttachmentIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DdpEmailAttachmentIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DdpEmailAttachmentIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DdpEmailAttachmentIntegrationTest: @Transactional;
    
    @Autowired
    DdpEmailAttachmentDataOnDemand DdpEmailAttachmentIntegrationTest.dod;
    
    @Autowired
    DdpEmailAttachmentService DdpEmailAttachmentIntegrationTest.ddpEmailAttachmentService;
    
    @Autowired
    DdpEmailAttachmentRepository DdpEmailAttachmentIntegrationTest.ddpEmailAttachmentRepository;
    
    @Test
    public void DdpEmailAttachmentIntegrationTest.testCountAllDdpEmailAttachments() {
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to initialize correctly", dod.getRandomDdpEmailAttachment());
        long count = ddpEmailAttachmentService.countAllDdpEmailAttachments();
        Assert.assertTrue("Counter for 'DdpEmailAttachment' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DdpEmailAttachmentIntegrationTest.testFindDdpEmailAttachment() {
        DdpEmailAttachment obj = dod.getRandomDdpEmailAttachment();
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to initialize correctly", obj);
        Integer id = obj.getEatId();
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to provide an identifier", id);
        obj = ddpEmailAttachmentService.findDdpEmailAttachment(id);
        Assert.assertNotNull("Find method for 'DdpEmailAttachment' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DdpEmailAttachment' returned the incorrect identifier", id, obj.getEatId());
    }
    
    @Test
    public void DdpEmailAttachmentIntegrationTest.testFindAllDdpEmailAttachments() {
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to initialize correctly", dod.getRandomDdpEmailAttachment());
        long count = ddpEmailAttachmentService.countAllDdpEmailAttachments();
        Assert.assertTrue("Too expensive to perform a find all test for 'DdpEmailAttachment', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DdpEmailAttachment> result = ddpEmailAttachmentService.findAllDdpEmailAttachments();
        Assert.assertNotNull("Find all method for 'DdpEmailAttachment' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DdpEmailAttachment' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DdpEmailAttachmentIntegrationTest.testFindDdpEmailAttachmentEntries() {
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to initialize correctly", dod.getRandomDdpEmailAttachment());
        long count = ddpEmailAttachmentService.countAllDdpEmailAttachments();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DdpEmailAttachment> result = ddpEmailAttachmentService.findDdpEmailAttachmentEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DdpEmailAttachment' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DdpEmailAttachment' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DdpEmailAttachmentIntegrationTest.testSaveDdpEmailAttachment() {
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to initialize correctly", dod.getRandomDdpEmailAttachment());
        DdpEmailAttachment obj = dod.getNewTransientDdpEmailAttachment(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DdpEmailAttachment' identifier to be null", obj.getEatId());
        try {
            ddpEmailAttachmentService.saveDdpEmailAttachment(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        ddpEmailAttachmentRepository.flush();
        Assert.assertNotNull("Expected 'DdpEmailAttachment' identifier to no longer be null", obj.getEatId());
    }
    
    @Test
    public void DdpEmailAttachmentIntegrationTest.testDeleteDdpEmailAttachment() {
        DdpEmailAttachment obj = dod.getRandomDdpEmailAttachment();
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to initialize correctly", obj);
        Integer id = obj.getEatId();
        Assert.assertNotNull("Data on demand for 'DdpEmailAttachment' failed to provide an identifier", id);
        obj = ddpEmailAttachmentService.findDdpEmailAttachment(id);
        ddpEmailAttachmentService.deleteDdpEmailAttachment(obj);
        ddpEmailAttachmentRepository.flush();
        Assert.assertNull("Failed to remove 'DdpEmailAttachment' with identifier '" + id + "'", ddpEmailAttachmentService.findDdpEmailAttachment(id));
    }
    
}
