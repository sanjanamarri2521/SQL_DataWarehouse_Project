-- *******************************************************
-- Checking 'silver.crm_cust_info'
-- *******************************************************
-- Check For Nulls or Duplicated in Primary Key
-- Expectation: No Result

SELECT cst_id, COUNT(*) 
FROM silver.crm_cust_info 
GROUP BY cst_id HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check For Unwanted Spaces
-- Expectation: No Result
SELECT cst_firstname 
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

SELECT cst_lastname 
FROM silver.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname)

SELECT cst_gndr 
FROM silver.crm_cust_info
WHERE cst_gndr != TRIM(cst_gndr)

SELECT cst_key
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key)

-- Data Standardization and Consistency
SELECT DISTINCT(cst_gndr)
FROM silver.crm_cust_info

SELECT DISTINCT(cst_marital_status)
FROM silver.crm_cust_info

-- *******************************************************
-- Checking 'silver.crm_prd_info'
-- *******************************************************
-- Check For Nulls or Duplicated in Primary Key
-- Expectation: No Result

SELECT prd_id, COUNT(*) 
FROM silver.crm_prd_info 
GROUP BY prd_id 
HAVING COUNT(*)>1 OR prd_id IS NULL

-- Check For Unwanted Spaces
-- Expectation: No Result
SELECT prd_nm
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

-- Check for NULLS or Negative Numbers
-- Expectation: No Result
SELECT prd_cost 
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

-- Data Standardization and Consistency
SELECT DISTINCT(prd_line)
FROM silver.crm_prd_info

-- Check for Invalid Date Orders
SELECT * 
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt
-- *******************************************************
-- Checking 'silver.crm_sales_details'
-- *******************************************************
-- Check For Unwanted Spaces
-- Expectation: No Result
SELECT sls_ord_num
FROM silver.crm_sales_details
WHERE sls_ord_num != TRIM(sls_ord_num)

-- Check For Integrity with other tables (cust_info, prd_info)
-- Expecation: No Result
SELECT * FROM silver.crm_sales_details
WHERE sls_prd_key NOT IN 
(SELECT prd_key FROM silver.crm_prd_info) 

SELECT * FROM silver.crm_sales_details
WHERE sls_cust_id NOT IN 
(SELECT cst_id FROM silver.crm_cust_info) 


-- Check for Invalid Date Orders
SELECT *
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt

-- Checking Data consistency for sales, qunatity and price
-- >> Sales = Quantity * Price
-- >> Values must not be null, negative or zero

SELECT DISTINCT
sls_sales,
sls_quantity,
sls_price
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
ORDER BY sls_sales,sls_quantity,sls_price
-- *******************************************************
-- Checking 'silver.erp_cust_az12'
-- *******************************************************
-- Check for out of range dates
SELECT DISTINCT
bdate
FROM silver.erp_cust_az12
WHERE bdate > GETDATE()

-- Distinct values in gender

SELECT DISTINCT
gen
FROM silver.erp_cust_az12
-- *******************************************************
-- Checking 'silver.erp_loc_a101'
-- *******************************************************
-- Data Standardization and Consistency
SELECT DISTINCT
cntry
FROM silver.erp_loc_a101
ORDER BY cntry
-- *******************************************************
-- Checking 'silver.erp_px_cat_g1v2'
-- *******************************************************
-- Check for unwanted spaces
SELECT * FROM silver.erp_px_cat_g1v2
WHERE TRIM(cat) != cat

SELECT * FROM silver.erp_px_cat_g1v2
WHERE TRIM(subcat) != subcat

SELECT * FROM silver.erp_px_cat_g1v2
WHERE TRIM(maintenance) != maintenance

--Data Standardization & Consistency
SELECT DISTINCT
cat
FROM silver.erp_px_cat_g1v2

SELECT DISTINCT
subcat
FROM silver.erp_px_cat_g1v2

SELECT DISTINCT
maintenance
FROM silver.erp_px_cat_g1v2
