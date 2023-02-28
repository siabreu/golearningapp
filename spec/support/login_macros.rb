module LoginMacros
  def login_student(student = Student.create!(email: "jane.doe@com", password: "123456"))
      login_as student, scope: :student
      student
  end
end