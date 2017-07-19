# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher = Teacher.create(name: 'takayama', kana: 'takayama', number: 'admin', user_name: 'admin', course_id: 1, password: 'hogehoge')
teacher = Teacher.create(name: 'miyazaki', kana: 'miyazaki', number: 'admin', user_name: 'miyazaki', course_id: 2, password: 'hogehoge')
student = Student.create(name: '生徒', kana: 'せいと', number: '1', user_name: 'student', course_id: 1, password: 'hogehoge')

# subject = teacher.subjects.create(
#   teacher_id: 1,
#   timetable: [3, 4],
#   name: '自然言語処理(本科5年)',
#   order: [1],
#   year: 5,
#   semester: 0,   #1:通年(30回),0:半期(15回)    day_of_week:5,  # 1=月曜日からスタート
#   day_of_week: 5
# )
subject = teacher.subjects.create(
  teacher_id: 2,
  timetable: [1, 2],
  name: '統計学',
  order: [1],
  year: 5,
  semester: 0,   #0:通年(30回),1:半期(15回)    day_of_week:5,  # 1=月曜日からスタート
  day_of_week: 2
)
teacher1 = Teacher.create(
    password: '000000',
    sign_in_count: '0',
    name:'山田健仁',
    kana:'やまだけんじ',
    number:'aaaaaaaa',
    user_name:'yamada',
    course_id:'1'
    )
student1 = Student.create(
    password: '000000',
    sign_in_count: '0',
    name:'石川真子',
    kana:'いしかわまこ',
    number:'4',
    user_name:'i13isikasa',
    course_id:'1'
    )
student2 = Student.create(
    password: '000000',
    sign_in_count: '0',
    name:'原田慎太郎',
    kana:'はらだしんたろう',
    number:'23',
    user_name:'i13harada',
    course_id:'1'
    )
student3 = Student.create(
    password: '000000',
    sign_in_count: '0',
    name:'廣澤勇樹',
    kana:'ひろざわゆうき',
    number:'26',
    user_name:'i13hirozawa',
    course_id:'1'
    )
student4 = Student.create(
    password: '000000',
    sign_in_count: '0',
    name:'森脇友香',
    kana:'もりわきともか',
    number:'33',
    user_name:'i13moriwaki',
    course_id:'1'
    )
student5 = Student.create(
    password: '000000',
    sign_in_count: '0',
    name:'山縣将貴',
    kana:'やまがたまさき',
    number:'35',
    user_name:'i13yamagata',
    course_id:'1'
    )
  student_subject = StudentSubject.create(
    student_id:student1.id,
    subject_id:1
  )
  student_subject = StudentSubject.create(
    student_id:student2.id,
    subject_id:1
  )
  student_subject = StudentSubject.create(
    student_id:student3.id,
    subject_id:1
  )
  student_subject = StudentSubject.create(
    student_id:student4.id,
    subject_id:1
  )
  student_subject = StudentSubject.create(
    student_id:student5.id,
    subject_id:1
  )
  attendances = Attendance.create(
    student_id: student1.id,
    subject_id: 1
  )


Subject.find(1).save

subject.student_subjects.create

student.student_subjects.create(subject_id: subject.id)
