# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(type: 'Teacher', name: 'admin', kana: 'admin', number: 'admin', user_name: 'admin', course_id: 1, password: 'hogehoge')

subject1 = Subject.create(
  user_id: admin.id,
  timetable: [3, 4],
  name: '自然言語処理(本科5年)',
  order: [1],
  year: 5,
  semester: 0,   #0:通年(30回),1:半期(15回)    day_of_week:5,  # 1=月曜日からスタート
  day_of_week: 5,
)

UserSubject.create(user_id: admin.id, subject_id: subject1.id)
