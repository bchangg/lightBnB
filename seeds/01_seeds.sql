INSERT INTO
  users (name, email, password)
VALUES
  ('bob marley', 'bm@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('paul george', 'pg@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('alison wong', 'awong@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
;

INSERT INTO
  properties (
    owner_id,
    title,
    description,
    thumbnail_photo_url,
    cover_photo_url,
    cost_per_night,
    parking_spaces,
    number_of_bathrooms,
    number_of_bedrooms,
    country,
    street,
    city,
    province,
    post_code,
    active
  )
VALUES
  (1, 'great house', 'description', 'www.someImages.com/thumbnail', 'www.someImages.com/cover', 119.99, 2, 4, 4, 'egypt', 'main street', 'cairo', 'egypt', '0jifak', 'true'),
  (2, 'more expensive house', 'description', 'www.someImages.com/thumbnail1', 'www.someImages.com/cover1', 89.99, 1, 2, 2, 'egypt', 'mainer street', 'cairo', 'egypt', 'lksd9e', 'false'),
  (3, 'omg giant house', 'description', 'www.someImages.com/thumbnail', 'www.someImages.com/cover', 1119.99, 6, 8, 10, 'china', 'main street', 'shanghai', 'shanghai', '02ejkd', 'true')
;

INSERT INTO
  reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2018-09-11', '2018-09-26', 1, 1),
  ('2018-09-11', '2018-09-26', 3, 3),
  ('2018-09-11', '2018-09-26', 2, 3)
;

INSERT INTO
  property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (3, 2, 1, 3, 'message'),
  (3, 2, 2, 3, 'message'),
  (3, 1, 3, 3, 'message'),
  (3, 2, 1, 3, 'message')
;

