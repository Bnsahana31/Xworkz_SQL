
SELECT * FROM factory_info;
SELECT COUNT(*) FROM factory_info;  
SELECT MAX(no_of_employes) FROM factory_info; 
SELECT MIN(total_food_counters) AS MIN FROM factory_info; 
SELECT AVG(factory_manager) AS AVG FROM factory_info; 
SELECT LTRIM(factory_location) FROM factory_info; 
SELECT RTRIM(factory_name) FROM factory_info; 
SELECT SUM(total_sub_managers) FROM factory_info;
SELECT * FROM factory_info ORDER BY factory_occupation_acre desc;

SELECT * FROM hospital_info;
SELECT COUNT(*) FROM hospital_info; 
SELECT SUM(hospital_noDepartment) FROM hospital_info; 
SELECT MAX(hospital_since) FROM hospital_info; 
SELECT MIN(hospital_noDoctors) AS MIN FROM hospital_info; 
SELECT AVG(hospital_noWards) AS AVG FROM hospital_info; 
SELECT LTRIM(hospital_doctorsId) FROM hospital_info; 
SELECT RTRIM(hospital_doctorsId1) FROM hospital_info; 
SELECT * FROM hospital_info ORDER BY hospital_id desc;

