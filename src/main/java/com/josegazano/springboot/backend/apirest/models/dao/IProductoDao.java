
package com.josegazano.springboot.backend.apirest.models.dao;

import com.josegazano.springboot.backend.apirest.models.entity.Producto;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author jlg
 */
public interface IProductoDao extends CrudRepository<Producto, Long>{
    
    @Query("select p from Producto p where p.nombre like %?1%")
    public List<Producto> findByNombre(String term);
    
    public List<Producto> findByNombreContainingIgnoreCase(String term);
    
    public List<Producto> findByNombreStartingWithIgnoreCase(String term);
}
