// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpAedRule;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

privileged aspect DdpAedRule_Roo_ToString {
    
    public String DdpAedRule.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("ddpRule", "aedCommunicationId", "aedCompressionId", "aedDocnameConvId", "aedMergeId", "aedNotificationId", "aedSchedulerId").toString();
    }
    
}
