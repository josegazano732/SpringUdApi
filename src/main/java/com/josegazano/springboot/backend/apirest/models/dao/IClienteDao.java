

package com.josegazano.springboot.backend.apirest.models.dao;


import com.josegazano.springboot.backend.apirest.models.entity.Cliente;
import com.josegazano.springboot.backend.apirest.models.entity.Region;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface IClienteDao extends JpaRepository<Cliente, Long>{
    @Query("from Region")
    public List<Region> findAllRegiones();
}
