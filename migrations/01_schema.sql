DROP TABLE property_reviews;
DROP TABLE reservations;
DROP TABLE properties;
DROP TABLE users;

CREATE TABLE users (
  id serial PRIMARY KEY NOT NULL,
  name varchar(255),
  email varchar(255),
  password varchar(30)
);

CREATE TABLE properties (
  id serial PRIMARY KEY NOT NULL,
  owner_id int REFERENCES users(id) ON DELETE CASCADE,
  title varchar(255),
  description text,
  thumbnail_photo_url varchar(255),
  cover_photo_url varchar(255),
  cost_per_night numeric,
  parking_spaces int,
  number_of_bathrooms int,
  number_of_bedrooms int,
  country varchar(255),
  street varchar(255),
  city varchar(255),
  province varchar(255),
  post_code varchar(15),
  active boolean
);

CREATE TABLE reservations (
  id serial PRIMARY KEY NOT NULL,
  property_id int REFERENCES properties(id) ON DELETE CASCADE,
  guest_id int REFERENCES users(id) ON DELETE CASCADE,
  start_date date,
  end_date date
);

CREATE TABLE property_reviews (
  id serial PRIMARY KEY NOT NULL,
  guest_id int REFERENCES users(id) ON DELETE CASCADE,
  reservation_id int REFERENCES reservations(id) ON DELETE CASCADE,
  property_id int REFERENCES properties(id) ON DELETE CASCADE,
  rating int,
  message text
);