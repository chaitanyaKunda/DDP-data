// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpCompressionLkp;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

privileged aspect DdpCompressionLkp_Roo_DbManaged {
    
    @Column(name = "CML_COPMRESSION_LEVEL", length = 8)
    @NotNull
    private String DdpCompressionLkp.cmlCopmressionLevel;
    
    @Column(name = "CML_COMPRESSION_SIZE")
    private Integer DdpCompressionLkp.cmlCompressionSize;
    
    public String DdpCompressionLkp.getCmlCopmressionLevel() {
        return cmlCopmressionLevel;
    }
    
    public void DdpCompressionLkp.setCmlCopmressionLevel(String cmlCopmressionLevel) {
        this.cmlCopmressionLevel = cmlCopmressionLevel;
    }
    
    public Integer DdpCompressionLkp.getCmlCompressionSize() {
        return cmlCompressionSize;
    }
    
    public void DdpCompressionLkp.setCmlCompressionSize(Integer cmlCompressionSize) {
        this.cmlCompressionSize = cmlCompressionSize;
    }
    
}
