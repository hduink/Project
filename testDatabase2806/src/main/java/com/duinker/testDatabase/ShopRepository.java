package com.duinker.testDatabase;

import org.springframework.data.repository.CrudRepository;

public interface ShopRepository
	extends CrudRepository<ShopInput, Long> {

}
