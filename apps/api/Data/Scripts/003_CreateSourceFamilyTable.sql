CREATE TABLE item_families
(
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name          VARCHAR(50) NOT NULL UNIQUE,
    bonus_city_id UUID        NOT NULL
        REFERENCES cities (id) ON DELETE RESTRICT,
    category_id UUID NOT NULL REFERENCES category(id),
    created_at    TIMESTAMPTZ      DEFAULT now(),
    updated_at    TIMESTAMPTZ      DEFAULT now()
);

CREATE INDEX idx_source_family_category ON item_families(category_id);
