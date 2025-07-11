CREATE TABLE transactions (
    id UUID PRIMARY KEY,
    profile_id UUID NOT NULL,
    type VARCHAR(16) NOT NULL, -- INCOME / EXPENSE
    category VARCHAR(100) NOT NULL,
    amount NUMERIC(12,2) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    FOREIGN KEY (profile_id) REFERENCES profiles(id)
);