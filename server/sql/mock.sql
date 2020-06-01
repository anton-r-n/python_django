use djangodb;


# Users
replace into auth_user (id, password, is_superuser, is_staff, is_active, first_name, last_name, username, email, date_joined)
values
  (2, '', 0, 0, 1, 'Liam', 'Smith', 'liam@gmail.com', 'liam@gmail.com', curdate()),
  (3, '', 0, 0, 1, 'Noah', 'Johnson', 'noah@gmail.com', 'noah@gmail.com', curdate()),
  (4, '', 0, 0, 1, 'William', 'Brown', 'william@gmail.com', 'william@gmail.com', curdate()),
  (5, '', 0, 0, 1, 'James', 'Williams', 'james@gmail.com', 'james@gmail.com', curdate()),
  (6, '', 0, 0, 1, 'Oliver', 'Jones', 'oliver@gmail.com', 'oliver@gmail.com', curdate()),
  (7, '', 0, 0, 1, 'Benjamin', 'Garcia', 'benjamin@gmail.com', 'benjamin@gmail.com', curdate()),
  (8, '', 0, 0, 1, 'Elijah', 'Miller', 'elijah@gmail.com', 'elijah@gmail.com', curdate()),
  (9, '', 0, 0, 1, 'Lucas', 'Davis', 'lucas@gmail.com', 'lucas@gmail.com', curdate());


# Institutions
replace into api_institution (id, name)
values
  (1, 'Berkeley'),
  (2, 'Stanford');


# Instructors
replace into api_instructor (id, name, title)
values
  (1, 'Jennifer Lynn Aaker', 'Professor'),
  (2, 'Szu-chi Huang', 'Associate Professor'),
  (3, 'Pedro M Gardete', ''),
  (4, 'Beverly H Davis', 'Professor'),
  (5, 'Andrew Emerson', 'Professor');


# Courses
replace into api_course (id, code, title, institution_id)
values
  (1, 'AEROSPC 1A 001', 'Foundations of the U.S. Air Force', 1),
  (2, 'AEROSPC 2B 001', 'The Evolution of Air and Space Power', 1),
  (3, 'MKTG 691', 'PhD Directed Reading', 2),
  (4, 'MKTG 692', 'PhD Dissertation Research', 2);


# Schedules
replace into api_schedule (id, course_id, instructor_id, date_start, time_start)
values
  (1, 1, 1, '2019-08-20', '09:00'),
  (2, 2, 2, '2019-08-20', '09:00'),
  (3, 3, 3, '2019-08-20', '09:00'),
  (4, 4, 4, '2019-08-20', '09:00');


# Attendee
replace into api_attendee (id, user_id, schedule_id)
values
  (1, 2, 1),
  (2, 3, 2),
  (3, 4, 3),
  (4, 5, 4),
  (5, 6, 1),
  (6, 7, 2),
  (7, 8, 3),
  (8, 9, 4);
