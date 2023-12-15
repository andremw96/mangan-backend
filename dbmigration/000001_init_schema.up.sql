CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "role" varchar,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "restaurants" (
  "id" integer PRIMARY KEY,
  "restaurant_name" varchar,
  "speciality" varchar,
  "created_at" timestamp,
  "updated_at" timestamp
);
