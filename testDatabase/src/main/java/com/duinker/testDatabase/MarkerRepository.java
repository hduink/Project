package com.duinker.testDatabase;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MarkerRepository extends CrudRepository<Markers, Long>{

//	@Query(value = "select name"from Markers ")
//	public Iterable<Markers> getElementById(@Param("lat, lng") float lat, float lng);

	
//	@Query("SELECT lat, lng FROM markers WHERE = '{$latlng}'")
	public Iterable<Markers> findByWinkelnaam(String winkelnaam);
	
	

}
