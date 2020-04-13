
CREATE TABLE "user"
(
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (200) NOT NULL,
    "email" VARCHAR (200) UNIQUE NOT NULL,
    "password" VARCHAR (200) NOT NULL,
    "admin" BOOLEAN NOT NULL DEFAULT false
);


CREATE TABLE "restaurant"
(
    "id" SERIAL PRIMARY KEY,
    "user_id" INT REFERENCES "user",
    "name" VARCHAR (200) NOT NULL,
    "type" VARCHAR (200) NOT NULL,
    "phone" VARCHAR (20),
    "address" VARCHAR,
    "hours" VARCHAR,
    "delivery" BOOLEAN,
    "pickUp" BOOLEAN,
    "link" VARCHAR,
    "description" VARCHAR (8000),
    "picture" VARCHAR,
    "welcomeNote" VARCHAR,
    "city" VARCHAR,
    "state" VARCHAR,
    "zipcode" INTEGER
);

CREATE TABLE "menu"
(
    "id" SERIAL PRIMARY KEY,
    "restaurant_id" INT REFERENCES "restaurant",
    "type" VARCHAR (200),
    "note" VARCHAR (1000)
);

CREATE TABLE "menu_section"
(
    "id" SERIAL PRIMARY KEY,
    "menu_id" INT REFERENCES "menu",
    "name" VARCHAR(200)
);

CREATE TABLE "menu_item"
(
    "id" SERIAL PRIMARY KEY,
    "section_id" INT REFERENCES "menu_section",
    "name" VARCHAR (200),
    "description" VARCHAR (1000),
    "price" VARCHAR (200),
    "image" VARCHAR
);

CREATE TABLE "ingedient"
(
    "id" SERIAL PRIMARY KEY,
    "menu_item_id" INT REFERENCES "menu_item",
    "name" VARCHAR (200)
);

CREATE TABLE "tags"
(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR (200)
);

CREATE TABLE "restaurant_tags"
(
    "id" SERIAL PRIMARY KEY,
    "restaurant_id" INT REFERENCES "restaurant",
    "tags_id" INT REFERENCES "tags"
);

-- After creating a user, you can run this after adding the user_id to it

<<<<<<< HEAD
INSERT INTO "restaurant" ("user_id", "name", "phone")
VALUES(UserIdHere, 'Pizza Luce', '612-222-2222'), (UserIdHere, 'Galaxy Pizza', '612-222-2222'), (UserIdHere, 'Johns Pizza Cafe', '612-222-2222'),

INSERT INTO "restaurant" ("user_id", "name", "phone")
VALUES(UserIdHere, 'Smashburger', '612-222-2222'), (UserIdHere, 'Burger Jones', '612-222-2222'), (UserIdHere, 'The Burger Place', '612-222-2222');
=======
INSERT INTO "restaurant"
    ("user_id", "name", "phone")
VALUES(UserIdHere, 'Pizza Luce', '612-222-2222'),
    (UserIdHere, 'Galaxy Pizza', '612-222-2222'),
    (UserIdHere, 'Johns Pizza Cafe', '612-222-2222')
>>>>>>> Add MenuPage, MenuView and associated components  and routes
