
package com.josegazano.springboot.backend.apirest.models.service;

import com.josegazano.springboot.backend.apirest.models.entity.Cliente;
import com.josegazano.springboot.backend.apirest.models.entity.Factura;
import com.josegazano.springboot.backend.apirest.models.entity.Producto;
import com.josegazano.springboot.backend.apirest.models.entity.Region;
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
        
        public List<Region> findAllRegiones();
        
        public Factura findFacturaById(Long id);
        
        public Factura saveFactura(Factura factura);
        
        public void deleteFacturaById(Long id);
        
        public List<Producto> findProductoByNombre(String term);
        

}