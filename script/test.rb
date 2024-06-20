# frozen_string_literal: true

Employee.destroy_all

employee = nil
Timecop.freeze("2019/1/10") {
  employee = Employee.create(emp_code: "001", name: "Jane")
}

Timecop.freeze("2019/1/20") {
  # モデルを更新すると履歴レコードが生成される
  employee.update(name: "Tom")
  # これは #save でも同様に行われる
  # employee.name = "Tom"
  # employee.save
}