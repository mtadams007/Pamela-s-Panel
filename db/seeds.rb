# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create(first_name: 'Albus', last_name: 'Dumbledore', age: 134, salary: 1400, education: 'PhD').build_profile(username: 'albus', password: 'lemondrop').save

Student.create(first_name: 'Harry', last_name: 'Potter', age: 12, education: 'kindergarten').build_profile(username: 'harry', password: '12345').save
Student.create(first_name: 'Hermione', last_name: 'Granger', age: 12, education: 'High School').build_profile(username:'hermione', password:'12345').save

Student.create(first_name: 'Draco', last_name: 'Malfoy', age: 12, education: 'spoiled').build_profile(username:'draco', password:'12345').save

Student.create(first_name: 'Ronald', last_name: 'Weasley', age: 12, education: 'none').build_profile(username:'ron', password:'12345').save
Student.create(first_name: 'Vincent', last_name: 'Crabbe', age: 12, education: 'negative').build_profile(username:'crabbe', password:'12345').save
Student.create(first_name: 'Gregory', last_name: 'Goyle', age: 12, education: 'negative').build_profile(username:'goyle', password: '12345').save

Student.create(first_name: 'Cho', last_name: 'Chang', age: 13, education: 'none').build_profile(username:'cho', password: '12345').save
Student.create(first_name: 'Luna', last_name: 'Lovegood', age: 11, education: 'wacky').build_profile(username:'luna', password: '12345').save
Student.create(first_name: 'Cedric', last_name: 'Diggory', age: 14, education: 'none').build_profile(username:'cedric', password: '12345').save
Student.create(first_name: 'Ernie', last_name: 'MacMillan', age: 11, education: 'none').build_profile(username:'ernie', password: '12345').save


Course.create(name:'Potions', hours: 70)
Course.create(name:'Defense Against the Dark Arts', hours: 80)




Educator.create(first_name:'Severus', last_name:'Snape',age: 42, salary: 800, education:'PhD').build_profile(username:'snape', password: '12345').save
Educator.create(first_name:'Horace', last_name:'Slughorn',age: 87, salary: 700, education:'Bachelors').build_profile(username:'horace', password: '12345').save
Educator.create(first_name:'Gilderoy', last_name:'Lockhart',age: 34, salary: 1000, education:'Bachelors').build_profile(username:'gilderoy', password: '12345').save
Educator.create(first_name:'Alastor', last_name:'Moody',age: 65, salary: 600, education:'PhD').build_profile(username:'alastor', password: '12345').save

Cohort.create(name:'Gryffindor', start:'1996-08-12', end:'2004-07-12',educator_id:1,course_id: 1)
Cohort.create(name:'Slytherin', start:'1996-08-12', end:'2004-07-12',educator_id:2,course_id: 1)
Cohort.create(name:'Ravenclaw', start:'1993-08-12', end:'2001-07-12',educator_id:3,course_id: 2)
Cohort.create(name:'Hufflepuff', start:'1996-08-12', end:'2004-07-12',educator_id:4,course_id: 2)

Grade.create(student_id: 1, cohort_id: 1, mark: 'C')
Grade.create(student_id: 2, cohort_id: 1, mark: 'A')
Grade.create(student_id: 3, cohort_id: 2, mark: 'C')
Grade.create(student_id: 4, cohort_id: 1, mark: 'D')
Grade.create(student_id: 5, cohort_id: 2, mark: 'E')
Grade.create(student_id: 6, cohort_id: 2, mark: 'E')
Grade.create(student_id: 7, cohort_id: 3, mark: 'B')
Grade.create(student_id: 8, cohort_id: 3, mark: 'A')
Grade.create(student_id: 9, cohort_id: 3, mark: 'A')
Grade.create(student_id: 10, cohort_id: 4, mark: 'B')
