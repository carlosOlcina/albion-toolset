CREATE TYPE continents AS ENUM ('Royal', 'Outlands', 'Mists')

CREATE TABLE cities
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name       VARCHAR(50) NOT NULL UNIQUE,
    ubication  continents  NOT NULL,
    created_at TIMESTAMPTZ      DEFAULT now(),
    updated_at TIMESTAMPTZ      DEFAULT now()
);

