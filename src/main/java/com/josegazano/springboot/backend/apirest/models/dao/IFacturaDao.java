/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.josegazano.springboot.backend.apirest.models.dao;

import com.josegazano.springboot.backend.apirest.models.entity.Factura;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author jlg
 */
public interface IFacturaDao extends CrudRepository<Factura, Long>{
    
}
