// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.agility.ddp.data.domain;

import com.agility.ddp.data.domain.DdpExportQueryUi;
import com.agility.ddp.data.domain.DdpExportQueryUiRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DdpExportQueryUiRepository_Roo_Jpa_Repository {
    
    declare parents: DdpExportQueryUiRepository extends JpaRepository<DdpExportQueryUi, Integer>;
    
    declare parents: DdpExportQueryUiRepository extends JpaSpecificationExecutor<DdpExportQueryUi>;
    
    declare @type: DdpExportQueryUiRepository: @Repository;
    
}