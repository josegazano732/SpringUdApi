

package com.josegazano.springboot.backend.apirest.models.dao;


import com.josegazano.springboot.backend.apirest.models.entity.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;


public interface IClienteDao extends JpaRepository<Cliente, Long>{
    
}
