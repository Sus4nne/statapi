package nl.innovate.statAPI.controller;

import nl.innovate.statAPI.model.Total;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TotalRepository extends CrudRepository<Total, Integer> {
   @Query(value = "SELECT count(month), sum(value1), sum(value2), sum(value3) FROM statistics_all", nativeQuery = true)
   List<Integer[]> sumValues();

   @Query(value = "SELECT count(month), sum(value1), sum(value2), sum(value3) FROM statistics_all WHERE year=:year", nativeQuery = true)
   List<Integer[]> sumValues(Integer year);

   @Query(value = "SELECT count(month), sum(value1), sum(value2), sum(value3) FROM statistics_all WHERE year=YEAR(curdate())", nativeQuery = true)
   List<Integer[]> sumValuesCurrent();



}
