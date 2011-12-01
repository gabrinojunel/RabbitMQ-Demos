// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chariotsolutions.rabbitmq.service;

import com.chariotsolutions.rabbitmq.domain.Mezzage;
import com.chariotsolutions.rabbitmq.repository.MezzageRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MezzageServiceImpl_Roo_Service {
    
    declare @type: MezzageServiceImpl: @Service;
    
    declare @type: MezzageServiceImpl: @Transactional;
    
    @Autowired
    MezzageRepository MezzageServiceImpl.mezzageRepository;
    
    public long MezzageServiceImpl.countAllMezzages() {
        return mezzageRepository.count();
    }
    
    public void MezzageServiceImpl.deleteMezzage(Mezzage mezzage) {
        mezzageRepository.delete(mezzage);
    }
    
    public Mezzage MezzageServiceImpl.findMezzage(java.lang.Long id) {
        return mezzageRepository.findOne(id);
    }
    
    public List<Mezzage> MezzageServiceImpl.findAllMezzages() {
        return mezzageRepository.findAll();
    }
    
    public List<Mezzage> MezzageServiceImpl.findMezzageEntries(int firstResult, int maxResults) {
        return mezzageRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void MezzageServiceImpl.saveMezzage(Mezzage mezzage) {
        mezzageRepository.save(mezzage);
    }
    
    public Mezzage MezzageServiceImpl.updateMezzage(Mezzage mezzage) {
        return mezzageRepository.save(mezzage);
    }
    
}