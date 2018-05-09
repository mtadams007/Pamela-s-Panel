# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the  Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.create(name:'Gryffindor', points: 198)
House.create(name:'Slytherin', points: 766)
House.create(name:'Ravenclaw', points: 456)
House.create(name:'Hufflepuff', points: 4)

Student.create(first_name: 'Harry', last_name: 'Potter', age: 12, education: 'kindergarten', house_id: 1).build_user(email: 'harry@email.com', password: '123456').save

Administrator.create(first_name: 'Albus', last_name: 'Dumbledore', age: 134, salary: 1400, education: 'PhD').build_user(email: 'albus@email.com', password: 'lemondrop').save


Student.create(first_name: 'Hermione', last_name: 'Granger', age: 12, education: 'High School', house_id: 1).build_user(email:'hermione@email.com', password:'dentist').save
Student.create(first_name: 'Ronald', last_name: 'Weasley', age: 12, education: 'none', house_id: 1).build_user(email:'ron@email.com', password:'123456').save

Student.create(first_name: 'Draco', last_name: 'Malfoy', age: 12, education: 'spoiled', house_id: 2).build_user(email:'draco@email.com', password:'123456').save


Student.create(first_name: 'Vincent', last_name: 'Crabbe', age: 12, education: 'negative', house_id: 2).build_user(email:'crabbe@email.com', password:'123456').save
Student.create(first_name: 'Gregory', last_name: 'Goyle', age: 12, education: 'negative', house_id: 2).build_user(email:'goyle@email.com', password: '123456').save

Student.create(first_name: 'Cho', last_name: 'Chang', age: 13, education: 'none', house_id: 3).build_user(email:'cho@email.com', password: '123456').save
Student.create(first_name: 'Luna', last_name: 'Lovegood', age: 11, education: 'wacky', house_id: 3).build_user(email:'luna@email.com', password: '123456').save
Student.create(first_name: 'Cedric', last_name: 'Diggory', age: 14, education: 'none', house_id: 4).build_user(email:'cedric@email.com', password: '123456').save
Student.create(first_name: 'Ernie', last_name: 'MacMillan', age: 11, education: 'none', house_id: 4).build_user(email:'ernie@email.com', password: '123456').save
Student.create(first_name: 'Dean', last_name: 'Thomas', age: 12, education: 'kindergarten', house_id: 1).build_user(email: 'dean@email.com', password: '123456').save
Student.create(first_name: 'Seamus', last_name: 'Finnegan', age: 12, education: 'kindergarten', house_id: 1).build_user(email: 'seamus@email.com', password: '123456').save
Student.create(first_name: 'Millicent', last_name: 'Bulstrode', age: 12, education: 'kindergarten', house_id: 2).build_user(email: 'millicent@email.com', password: '123456').save
Student.create(first_name: 'Michael', last_name: 'Corner', age: 12, education: 'kindergarten', house_id: 3).build_user(email: 'mike@email.com', password: '123456').save
Student.create(first_name: 'Hannah', last_name: 'Abbott', age: 12, education: 'kindergarten', house_id: 4).build_user(email: 'hannah@email.com', password: '123456').save
Student.create(first_name: 'Justin', last_name: 'Finch-Fletchley', age: 12, education: 'kindergarten', house_id: 4).build_user(email: 'justin@email.com', password: '123456').save
Student.create(first_name: 'Susan', last_name: 'Bones', age: 12, education: 'kindergarten', house_id: 4).build_user(email: 'susan@email.com', password: '123456').save
Student.create(first_name: 'Trevor', last_name: 'Boot', age: 12, education: 'kindergarten', house_id: 3).build_user(email: 'trevor@email.com', password: '123456').save

Student.create(first_name: 'Pansy', last_name: 'Parkinson', age: 12, education: 'kindergarten', house_id: 2).build_user(email: 'pansy@email.com', password: '123456').save

Student.create(first_name: 'Lavender', last_name: 'Brown', age: 12, education: 'kindergarten', house_id: 1).build_user(email: 'lavender@email.com', password: '123456').save

Course.create(name:'Potions', hours: 70)
Course.create(name:'Defense Against the Dark Arts', hours: 80)
Course.create(name:'Herbology', hours: 70)
Course.create(name:'Charms', hours: 70)



Educator.create(first_name:'Severus', last_name:'Snape',age: 42, salary: 800, education:'PhD', house_id: 2).build_user(email:'snape@email.com', password: '123456').save
Educator.create(first_name:'Horace', last_name:'Slughorn',age: 87, salary: 700, education:'Bachelors', house_id: 2).build_user(email:'horace@email.com', password: '123456').save
Educator.create(first_name:'Gilderoy', last_name:'Lockhart',age: 34, salary: 1000, education:'Bachelors', house_id: 3).build_user(email:'gilderoy@email.com', password: '123456').save
Educator.create(first_name:'Alastor', last_name:'Moody',age: 65, salary: 600, education:'PhD', house_id: 1).build_user(email:'alastor@email.com', password: '123456').save
Educator.create(first_name:'Pomona', last_name:'Sprout',age: 42, salary: 800, education:'PhD', house_id: 4).build_user(email:'sprout@email.com', password: '123456').save
Educator.create(first_name:'Filius', last_name:'Flitwick',age: 42, salary: 800, education:'PhD', house_id: 3).build_user(email:'flitwick@email.com', password: '123456').save



Cohort.create(name:'Potions 101', start:'1996-08-12', end:'2004-07-12',educator_id:1,course_id: 1)
Cohort.create(name:'Potions 201', start:'1996-08-12', end:'2004-07-12',educator_id:2,course_id: 1)
Cohort.create(name:'DADA 101', start:'1993-08-12', end:'2001-07-12',educator_id:3,course_id: 2)
Cohort.create(name:'DADA201', start:'1996-08-12', end:'2004-07-12',educator_id:4,course_id: 2)
Cohort.create(name:'Charms 101', start:'1996-08-12', end:'2004-07-12',educator_id:6,course_id: 4)
Cohort.create(name:'Charms 201', start:'1996-08-12', end:'2004-07-12',educator_id:6,course_id: 4)
Cohort.create(name:'Herbology 101', start:'1996-08-12', end:'2004-07-12',educator_id:5,course_id: 3)
Cohort.create(name:'Herbology 201', start:'1996-08-12', end:'2004-07-12',educator_id:5,course_id: 3)

Grade.create(student_id: 1, cohort_id: 1, mark: 'C')
Grade.create(student_id: 2, cohort_id: 1, mark: 'A')
Grade.create(student_id: 3, cohort_id: 1, mark: 'C')
Grade.create(student_id: 4, cohort_id: 1, mark: 'D')
Grade.create(student_id: 5, cohort_id: 2, mark: 'E')
Grade.create(student_id: 6, cohort_id: 2, mark: 'E')
Grade.create(student_id: 7, cohort_id: 3, mark: 'B')
Grade.create(student_id: 8, cohort_id: 3, mark: 'A')
Grade.create(student_id: 9, cohort_id: 3, mark: 'A')
Grade.create(student_id: 10, cohort_id: 4, mark: 'B')

Grade.create(student_id: 1, cohort_id: 5, mark: 'D')
Grade.create(student_id: 2, cohort_id: 6, mark: 'A')
Grade.create(student_id: 3, cohort_id: 4, mark: 'B')
Grade.create(student_id: 4, cohort_id: 4, mark: 'D')
Grade.create(student_id: 5, cohort_id: 5, mark: 'E')
Grade.create(student_id: 6, cohort_id: 4, mark: 'E')
Grade.create(student_id: 7, cohort_id: 2, mark: 'D')
Grade.create(student_id: 8, cohort_id: 4, mark: 'B')
Grade.create(student_id: 9, cohort_id: 6, mark: 'B')
Grade.create(student_id: 10, cohort_id: 6, mark: 'B')

Grade.create(student_id: 11, cohort_id: 1, mark: 'C')
Grade.create(student_id: 12, cohort_id: 1, mark: 'A')
Grade.create(student_id: 13, cohort_id: 1, mark: 'C')
Grade.create(student_id: 14, cohort_id: 1, mark: 'D')
Grade.create(student_id: 15, cohort_id: 2, mark: 'E')
Grade.create(student_id: 16, cohort_id: 2, mark: 'E')
Grade.create(student_id: 17, cohort_id: 3, mark: 'B')
Grade.create(student_id: 18, cohort_id: 3, mark: 'A')
Grade.create(student_id: 19, cohort_id: 3, mark: 'A')
Grade.create(student_id: 20, cohort_id: 4, mark: 'B')

Grade.create(student_id: 11, cohort_id: 4, mark: 'C')
Grade.create(student_id: 12, cohort_id: 4, mark: 'A')
Grade.create(student_id: 13, cohort_id: 5, mark: 'C')
Grade.create(student_id: 14, cohort_id: 5, mark: 'D')
Grade.create(student_id: 15, cohort_id: 6, mark: 'E')
Grade.create(student_id: 16, cohort_id: 6, mark: 'E')
Grade.create(student_id: 17, cohort_id: 6, mark: 'B')
Grade.create(student_id: 18, cohort_id: 1, mark: 'A')
Grade.create(student_id: 19, cohort_id: 2, mark: 'A')
Grade.create(student_id: 20, cohort_id: 2, mark: 'B')
