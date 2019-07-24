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
