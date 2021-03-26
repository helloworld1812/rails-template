# == Schema Information
#
# Table name: core_employees
#
#  core_company_uuid :uuid             not null
#  core_hr_uuid      :uuid
#  deleted_at        :datetime
#  uuid              :uuid
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_core_employees_on_uuid  (uuid)
#
class Core::Employee < ApplicationRecord
end
