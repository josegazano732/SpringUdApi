
package com.josegazano.springboot.backend.apirest.models.service;

import com.josegazano.springboot.backend.apirest.models.entity.Cliente;
import java.util.List;

/**
 *
 * @author JLG
 */
public interface IClienteService {
	
	public List<Cliente> findAll();
	
	public Cliente save(Cliente cliente);
	
	public Cliente findById(Long id);
	
	public void delete(Long id);

}