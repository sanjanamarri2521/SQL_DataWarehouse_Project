# 📊 Data Catalog

## 1. `gold.dim_customers`
**Purpose:** Stores customer details enriched with demographic and geographic data.

**Columns:**
- `customer_key` INT – Surrogate key to uniquely identify each customer record in the dimension table  
- `customer_id` INT – Unique numerical identifier assigned to each customer  
- `customer_number` NVARCHAR(50) – Alphanumeric identifier representing the customer, used for tracking and referencing  
- `first_name` NVARCHAR(50) – The customer's first name recorded in the system  
- `last_name` NVARCHAR(50) – The customer's last name recorded in the system  
- `country` NVARCHAR(50) – The country of residence of the customer  
- `marital_status` NVARCHAR(50) – The marital status of the customer  
- `gender` NVARCHAR(50) – The gender of the customer  
- `birthdate` DATE – The date of birth of the customer, formatted as YYYY-MM-DD  
- `create_date` DATE – The date and time when the customer record was created in the system  

---

## 2. `gold.dim_products`
**Purpose:** Provides information about the products and their attributes.

**Columns:**
- `product_key` INT – Surrogate key to uniquely identify each product record in the product dimension table  
- `product_id` INT – A unique identifier assigned to the product for internal tracking and referencing  
- `product_number` NVARCHAR(50) – A structured alphanumeric code representing the product, often used for categorization or inventory  
- `product_name` NVARCHAR(50) – Descriptive name of the product, including key details such as type, colour and size  
- `category_id` NVARCHAR(50) – A unique identifier for the product's category, linking to its high-level classification  
- `category` NVARCHAR(50) – The broader classification of the product to group related items  
- `subcategory` NVARCHAR(50) – A more detailed classification of the product within the category such as product type  
- `maintenance_required` NVARCHAR(50) – Indicates whether the product requires maintenance  
- `cost` INT – The cost or the base price of the product, measured in monetary units  
- `product_line` NVARCHAR(50) – The specific product line or series to which the product belongs  
- `start_date` DATE – The date when the product became available for sale or use  

---

## 3. `gold.fact_sales`
**Purpose:** Stores transactional sales data for analytical purposes.

**Columns:**
- `order_number` NVARCHAR(50) – A unique alphanumeric identifier for each sales order  
- `product_key` INT – Surrogate key linking the order to the product dimension table  
- `customer_key` INT – Surrogate key linking the order to the customer dimension table  
- `order_date` DATE – The date when the order was placed  
- `shipping_date` DATE – The date when the order was shipped to the customer  
- `due_date` DATE – The date when the order payment was due  
- `sales_amount` INT – The total monetary value of the sale for the line item, in whole currency units  
- `quantity` INT – The number of units of the product ordered for the line items  
- `price` INT – The price per unit of the product for the line item, in whole currency units  
