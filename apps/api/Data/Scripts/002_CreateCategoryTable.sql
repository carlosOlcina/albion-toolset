CREATE TABLE categories (
    id UUID PRIMARY KEY default gen_random_uuid(),
    name VARCHAR(50) NOT NULL UNIQUE,
    city_bonus SMALLINT NOT NULL,
    foco_bonus SMALLINT NOT NULL,
    created_at TIMESTAMPTZ default now(),
    updated_at TIMESTAMPTZ default now()
)