// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCommEmail;
import javax.persistence.Column;

privileged aspect DdpCommEmail_Roo_DbManaged {
    
    @Column(name = "CEM_EMAIL_FROM", length = 45)
    private String DdpCommEmail.cemEmailFrom;
    
    @Column(name = "CEM_EMAIL_TO", length = 256)
    private String DdpCommEmail.cemEmailTo;
    
    @Column(name = "CEM_EMAIL_CC", length = 1000)
    private String DdpCommEmail.cemEmailCc;
    
    @Column(name = "CEM_EMAIL_SUBJECT", length = 1000)
    private String DdpCommEmail.cemEmailSubject;
    
    @Column(name = "CEM_EMAIL_BODY", length = 2000)
    private String DdpCommEmail.cemEmailBody;
    
    @Column(name = "CEM_EMAIL_ATTACHMENT_LIMIT")
    private Integer DdpCommEmail.cemEmailAttachmentLimit;
    
    @Column(name = "CEM_FTP_LOCATION", length = 128)
    private String DdpCommEmail.cemFtpLocation;
    
    @Column(name = "CEM_UNC_PATH", length = 128)
    private String DdpCommEmail.cemUncPath;
    
    @Column(name = "CEM_EMAIL_BCC", length = 1000)
    private String DdpCommEmail.cemEmailBcc;
    
    @Column(name = "CEM_EMAIL_REPLY_TO", length = 1000)
    private String DdpCommEmail.cemEmailReplyTo;
    
    public String DdpCommEmail.getCemEmailFrom() {
        return cemEmailFrom;
    }
    
    public void DdpCommEmail.setCemEmailFrom(String cemEmailFrom) {
        this.cemEmailFrom = cemEmailFrom;
    }
    
    public String DdpCommEmail.getCemEmailTo() {
        return cemEmailTo;
    }
    
    public void DdpCommEmail.setCemEmailTo(String cemEmailTo) {
        this.cemEmailTo = cemEmailTo;
    }
    
    public String DdpCommEmail.getCemEmailCc() {
        return cemEmailCc;
    }
    
    public void DdpCommEmail.setCemEmailCc(String cemEmailCc) {
        this.cemEmailCc = cemEmailCc;
    }
    
    public String DdpCommEmail.getCemEmailSubject() {
        return cemEmailSubject;
    }
    
    public void DdpCommEmail.setCemEmailSubject(String cemEmailSubject) {
        this.cemEmailSubject = cemEmailSubject;
    }
    
    public String DdpCommEmail.getCemEmailBody() {
        return cemEmailBody;
    }
    
    public void DdpCommEmail.setCemEmailBody(String cemEmailBody) {
        this.cemEmailBody = cemEmailBody;
    }
    
    public Integer DdpCommEmail.getCemEmailAttachmentLimit() {
        return cemEmailAttachmentLimit;
    }
    
    public void DdpCommEmail.setCemEmailAttachmentLimit(Integer cemEmailAttachmentLimit) {
        this.cemEmailAttachmentLimit = cemEmailAttachmentLimit;
    }
    
    public String DdpCommEmail.getCemFtpLocation() {
        return cemFtpLocation;
    }
    
    public void DdpCommEmail.setCemFtpLocation(String cemFtpLocation) {
        this.cemFtpLocation = cemFtpLocation;
    }
    
    public String DdpCommEmail.getCemUncPath() {
        return cemUncPath;
    }
    
    public void DdpCommEmail.setCemUncPath(String cemUncPath) {
        this.cemUncPath = cemUncPath;
    }
    
    public String DdpCommEmail.getCemEmailBcc() {
        return cemEmailBcc;
    }
    
    public void DdpCommEmail.setCemEmailBcc(String cemEmailBcc) {
        this.cemEmailBcc = cemEmailBcc;
    }
    
    public String DdpCommEmail.getCemEmailReplyTo() {
        return cemEmailReplyTo;
    }
    
    public void DdpCommEmail.setCemEmailReplyTo(String cemEmailReplyTo) {
        this.cemEmailReplyTo = cemEmailReplyTo;
    }
    
}
