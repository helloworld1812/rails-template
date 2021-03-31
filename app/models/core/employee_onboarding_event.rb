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
# Indexes
#
#  index_core_employee_onboarding_events_on_core_company_uuid   (core_company_uuid)
#  index_core_employee_onboarding_events_on_core_employee_uuid  (core_employee_uuid)
#
class Core::EmployeeOnboardingEvent < ApplicationRecord
end
