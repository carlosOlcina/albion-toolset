CREATE TABLE recipe_items(
    recipe_id UUID NOT NULl REFERENCES recipes(id) ON DELETE CASCADE,
    item_id UUID NOT NULL REFERENCES recipes(id) ON DELETE RESTRICT,
    amount SMALLINT NOT NULL,
    is_recoverable BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE INDEX idx_recipe_items_recipe ON recipe_items(recipe_id);
CREATE INDEX idx_recipe_items_items ON recipe_items (item_id);
