package com.duinker.testDatabase;

import java.util.*;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ShopRepository
	extends CrudRepository<Casus, Long> {

	@Query("SELECT a FROM Casus a WHERE a.locatie=:locatie and a.merk=:merk and a.prijs= :prijs " )
	List<Casus> zoekinput(@Param("locatie")String locatie, @Param("merk")String merk, @Param("prijs")String prijs);
}



