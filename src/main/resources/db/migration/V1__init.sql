CREATE TABLE category
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime         NOT NULL,
    updated_at    datetime         NOT NULL,
    is_deleted    BIT(1) DEFAULT 0 NOT NULL,
    category_name VARCHAR(255) NULL,
    CONSTRAINT pk_category PRIMARY KEY (id)
);

CREATE TABLE product
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime         NOT NULL,
    updated_at    datetime         NOT NULL,
    is_deleted    BIT(1) DEFAULT 0 NOT NULL,
    title         VARCHAR(255) NULL,
    price DOUBLE NOT NULL,
    image_url     VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    category_id   BIGINT NULL,
    CONSTRAINT pk_product PRIMARY KEY (id)
);

ALTER TABLE product
    ADD CONSTRAINT FK_PRODUCT_ON_CATEGORY FOREIGN KEY (category_id) REFERENCES category (id);