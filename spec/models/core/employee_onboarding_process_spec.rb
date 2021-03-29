# == Schema Information
#
# Table name: core_employee_onboarding_processes
#
#  configurations     :jsonb
#  core_company_uuid  :uuid             not null
#  core_created_at    :datetime
#  core_deleted_at    :datetime
#  core_employee_uuid :uuid             not null
#  core_updated_at    :datetime
#  uuid               :uuid             not null, primary key
#
# Indexes
#
#  index_core_eop_on_core_company_uuid   (core_company_uuid)
#  index_core_eop_on_core_employee_uuid  (core_employee_uuid)
#
require 'rails_helper'

RSpec.describe Core::EmployeeOnboardingProcess, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
