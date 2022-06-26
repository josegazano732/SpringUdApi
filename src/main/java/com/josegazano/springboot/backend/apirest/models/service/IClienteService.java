
package com.josegazano.springboot.backend.apirest.models.service;

import com.josegazano.springboot.backend.apirest.models.entity.Cliente;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 *
 * @author JLG
 */
public interface IClienteService {
	
	public List<Cliente> findAll();
	
        public Page<Cliente> findAll(Pageable pegeable);
        
	public Cliente save(Cliente cliente);
	
	public Cliente findById(Long id);
	
	public void delete(Long id);

}