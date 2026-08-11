use upi_capstone;

-- =====================================================
-- Row counts across tables
-- =====================================================

SELECT COUNT(*) AS total_rows FROM customer_master;
SELECT COUNT(*) AS total_rows FROM merchant_info;
SELECT COUNT(*) AS total_rows FROM device_info;
SELECT COUNT(*) AS total_rows FROM upi_account_details;
SELECT COUNT(*) AS total_rows FROM upi_transaction_history;
SELECT COUNT(*) AS total_rows FROM customer_feedback_surveys;
SELECT COUNT(*) AS total_rows FROM fraud_alert_history;

-- =====================================================
-- Random Spot Checks for Field Mapping
-- =====================================================

SELECT * FROM customer_master LIMIT 10;
SELECT * FROM upi_transaction_history LIMIT 10;
SELECT * FROM fraud_alert_history LIMIT 10;

-- =====================================================
-- Consistency of foreign key relationships after loading
-- =====================================================

-- A. Custome_id Validation

SELECT COUNT(*) AS invalid_customer_ids FROM upi_account_details u LEFT JOIN customer_master c ON u.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- B. merchant_id Validation

SELECT COUNT(*) AS invalid_merchant_ids FROM upi_transaction_history t LEFT JOIN merchant_info m ON t.merchant_id = m.merchant_id
WHERE m.merchant_id IS NULL;

-- C. upi_id Validation

SELECT COUNT(*) AS invalid_upi_ids FROM upi_transaction_history t LEFT JOIN upi_account_details u ON t.upi_id = u.upi_id
WHERE u.upi_id IS NULL;

-- D. device_id Validation

SELECT COUNT(*) AS invalid_device_ids FROM upi_transaction_history t LEFT JOIN device_info d ON t.device_id = d.device_id
WHERE d.device_id IS NULL;

-- E. transaction_id Validation

SELECT COUNT(*) AS invalid_transaction_ids FROM fraud_alert_history f LEFT JOIN upi_transaction_history t ON f.transaction_id = t.transaction_id
WHERE t.transaction_id IS NULL;
