# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher = Teacher.create(name: 'admin', kana: 'admin', number: 'admin', user_name: 'admin', course_id: 1, password: 'hogehoge')
student = Student.create(name: 'student', kana: 'student', number: 'student', user_name: 'student', course_id: 1, password: 'hogehoge')

subject = teacher.subjects.create(
  timetable: [3, 4],
  name: '自然言語処理(本科5年)',
  order: [1],
  year: 5,
  semester: 0,   #0:通年(30回),1:半期(15回)    day_of_week:5,  # 1=月曜日からスタート
  day_of_week: 5,
# )
# user1 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'高山泰博',
#     kana:'たかやまやすひろ'
#     number:'aaaaaaaa',
#     username:'takayama',
#     corse_id:'0',   # いまのところ先生の場合は0
#     type:'0',       # 0:先生,1:生徒
#     )
# user2 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'山田健仁',
#     kana:'やまだけんじ'
#     number:'aaaaaaaa',
#     username:'yamada',
#     corse_id:'0',
#     type:'0',       # 0:先生,1:生徒
#     )
# user3 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'石川真子',
#     kana:'いしかわまこ'
#     number:'4',
#     username:'i13isikasa',
#     corse_id:'1',
#     type:'1',       # 0:先生,1:生徒
#     )
# user4 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'原田慎太郎',
#     kana:'はらだしんたろう'
#     number:'23',
#     username:'i13harada',
#     corse_id:'1',
#     type:'1',       # 0:先生,1:生徒
#     )
# user5 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'廣澤勇樹',
#     kana:'ひろざわゆうき'
#     number:'26',
#     username:'i13hirozawa',
#     corse_id:'1',
#     type:'1',       # 0:先生,1:生徒
#     )
# user6 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'森脇友香',
#     kana:'もりわきともか'
#     number:'33',
#     username:'i13moriwaki',
#     corse_id:'1',
#     type:'1',       # 0:先生,1:生徒
#     )
# user7 = User.create(
#     password: '000000',
#     sign_in_count: '0',
#     name:'山縣将貴',
#     kana:'やまがたまさき'
#     number:'35',
#     username:'i13yamagata',
#     corse_id:'1',
#     type:'1',       # 0:先生,1:生徒
#     )
#   subject1 = Subject.create(
#     user_id:user1.id,
#     timetables:[3,4],
#     name:'自然言語処理(本科5年)',
#     order:
#     year:5
#     semester:0,   #0:通年(30回),1:半期(15回)
#     day_of_week:5,  # 1=月曜日からスタート
#     )
# user_subject = UserSubject.create({
#     user_id:user1.id,
#     subject_id:1
#   },
#   {
#     user_id:user3.id,
#     subject_id:1
#   },
#   {
#     user_id:user4.id,
#     subject_id:1
#   },
#   {
#     user_id:user5.id,
#     subject_id:1
#   },
#   {
#     user_id:user6.id,
#     subject_id:1
#   },
#   {
#     user_id:user7.id,
#     subject_id:1
#   })

subject.student_subjects.create

student.student_subjects.create(subject_id: subject.id)
