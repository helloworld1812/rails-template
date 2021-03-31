# == Schema Information
#
# Table name: core_employee_onboarding_events
#
#  app_name           :string
#  configuration_uuid :uuid
#  core_company_uuid  :uuid
#  core_created_at    :datetime
#  core_deleted_at    :datetime
#  core_employee_uuid :uuid
#  core_updated_at    :datetime
#  status             :string
#  uuid               :uuid             not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require 'rails_helper'

RSpec.describe Core::EmployeeOnboardingEvent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
