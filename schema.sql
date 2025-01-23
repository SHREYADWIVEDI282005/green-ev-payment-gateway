-- CREATE TABLE bookings (
--     id SERIAL PRIMARY KEY,
--     user_name VARCHAR(255),
--     mobile_number VARCHAR(15),
--     slot_time TIMESTAMP,
--     payment_status VARCHAR(10) DEFAULT 'PENDING',
--     payment_id VARCHAR(255),
--     verification_id VARCHAR(8),
--     created_at TIMESTAMP DEFAULT NOW()
-- );

-- CREATE TABLE slots (
--     slot_time TIMESTAMP PRIMARY KEY,
--     is_booked BOOLEAN DEFAULT FALSE,
--     booked_by INTEGER REFERENCES bookings(id) ON DELETE SET NULL
-- );

-- -- Insert sample slots
-- INSERT INTO slots (slot_time) VALUES
-- ('2025-01-22 10:00:00'),
-- ('2025-01-22 11:00:00'),
-- ('2025-01-22 12:00:00');



CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    slot_time VARCHAR(50) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    verification_id VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES bookings(id),
    razorpay_order_id VARCHAR(100),
    payment_id VARCHAR(100),
    payment_status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE slots (
    slot_id SERIAL PRIMARY KEY,
    slot_time VARCHAR(50) NOT NULL
);


-- Insert sample slots
INSERT INTO slots (slot_time) VALUES
('2025-01-22 10:00:00'),
('2025-01-22 11:00:00'),
('2025-01-22 12:00:00');