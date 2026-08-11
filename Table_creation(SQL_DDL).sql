create database UPI_Capstone_Project;
use UPI_Capstone_Project;

CREATE TABLE customer_master (
    customer_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT NOT NULL CHECK (age > 0),
    gender VARCHAR(20) CHECK (gender IN ('Male', 'Female', 'Other')),
    region VARCHAR(50) NOT NULL,
    date_joined DATE NOT NULL,
    is_business_user BOOLEAN NOT NULL,
    risk_score DECIMAL(5,2) CHECK (risk_score BETWEEN 0 AND 1),
    mobile_number VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE device_info (
    device_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    device_type VARCHAR(30) NOT NULL
        CHECK (device_type IN ('Android', 'iOS', 'Tablet', 'FeaturePhone')),
    app_version VARCHAR(20) NOT NULL,
    is_rooted BOOLEAN NOT NULL,
    last_active TIMESTAMP NOT NULL,

    CONSTRAINT fk_device_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer_master(customer_id)
);

CREATE TABLE upi_account_details (
    upi_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    account_type VARCHAR(30)
        CHECK (account_type IN ('Savings', 'Current', 'Credit Card Linked')),
    date_added DATE NOT NULL,
    status VARCHAR(30)
        CHECK (status IN ('Active', 'Blocked', 'Suspended')),

    CONSTRAINT fk_upi_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer_master(customer_id)
);

CREATE TABLE merchant_info (
    merchant_id VARCHAR(20) PRIMARY KEY,
    merchant_name VARCHAR(150) NOT NULL,
    merchant_type VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    onboard_date DATE NOT NULL,
    risk_score DECIMAL(5,2)
        CHECK (risk_score BETWEEN 0 AND 1)
);

CREATE TABLE upi_transaction_history (
    transaction_id VARCHAR(30) PRIMARY KEY,
    upi_id VARCHAR(50) NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    amount DECIMAL(12,2) NOT NULL CHECK (amount > 0),

    transaction_type VARCHAR(50)
        CHECK (
            transaction_type IN
            ('Send', 'Receive', 'Merchant_Payment', 'Bill_Pay')
        ),

    merchant_id VARCHAR(20),
    counterparty_upi VARCHAR(50),
    status VARCHAR(20)
        CHECK (status IN ('Success', 'Failed', 'Pending')),

    device_id VARCHAR(20) NOT NULL,

    device_type VARCHAR(30),

    channel VARCHAR(30)
        CHECK (
            channel IN
            ('App', 'QR Code', 'Intent', 'Collect Request')
        ),

    fraud_flag BOOLEAN NOT NULL,
    reversal_flag BOOLEAN NOT NULL,
    failure_reason VARCHAR(255),

    CONSTRAINT fk_transaction_upi
        FOREIGN KEY (upi_id)
        REFERENCES upi_account_details(upi_id),

    CONSTRAINT fk_transaction_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer_master(customer_id),

    CONSTRAINT fk_transaction_merchant
        FOREIGN KEY (merchant_id)
        REFERENCES merchant_info(merchant_id),

    CONSTRAINT fk_transaction_device
        FOREIGN KEY (device_id)
        REFERENCES device_info(device_id)
);


CREATE TABLE customer_feedback_surveys (
    feedback_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    date_submitted DATE NOT NULL,
    feedback_text TEXT,
    satisfaction_score INT
        CHECK (satisfaction_score BETWEEN 1 AND 5),

    issue_type VARCHAR(50),
    resolved BOOLEAN NOT NULL,
    remarks VARCHAR(255),

    CONSTRAINT fk_feedback_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer_master(customer_id)
);


CREATE TABLE fraud_alert_history (
    alert_id VARCHAR(20) PRIMARY KEY,
    transaction_id VARCHAR(30) NOT NULL,
    alert_type VARCHAR(100) NOT NULL,
    alert_date TIMESTAMP NOT NULL,
    resolved BOOLEAN NOT NULL,
    resolution_date TIMESTAMP,

    CONSTRAINT fk_alert_transaction
        FOREIGN KEY (transaction_id)
        REFERENCES upi_transaction_history(transaction_id)
);

show tables;

DESC customer_master;
DESC device_info;
DESC upi_account_details;
DESC merchant_info;
DESC upi_transaction_history;
DESC customer_feedback_surveys;
DESC fraud_alert_history;