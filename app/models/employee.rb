# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  status     :integer
#  uuid       :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#  hr_id      :bigint
#
# Indexes
#
#  index_employees_on_company_id  (company_id)
#  index_employees_on_hr_id       (hr_id)
#  index_employees_on_uuid        (uuid)
#
class Employee < ApplicationRecord
  enum status: {
    active: 0,
    archived: 1,
    deleted: 2
  }
end
