CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE TABLE items
(
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name        VARCHAR(50) NOT NULL UNIQUE,
    icon        VARCHAR(100) NOT NULL,
    tier        SMALLINT     NOT NULL,
    enchantment SMALLINT     NOT NULL,
    family_id   UUID REFERENCES item_families (id) ON DELETE CASCADE,
    created_at  TIMESTAMPTZ  DEFAULT now(),
    updated_at  TIMESTAMPTZ  DEFAULT now()
);

CREATE INDEX idx_items_family_id ON items(family_id);
CREATE INDEX idx_items_tier ON items(tier);
CREATE INDEX idx_items_enchantment ON items(enchantment);

CREATE INDEX idx_items_name_trgm ON items USING gin (name gin_trgm_ops);