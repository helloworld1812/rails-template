# == Schema Information
#
# Table name: core_employee_informations
#
#  apply_date              :date
#  company_uuid            :uuid
#  date_of_birth           :date
#  deleted_at              :datetime
#  department_name         :string
#  employee_uuid           :uuid
#  ethnicity               :string
#  first_name              :string
#  gender                  :string
#  hire_date               :date
#  home_email              :string
#  home_phone_country_code :string
#  home_phone_extension    :string
#  home_phone_number       :string
#  job_title               :string
#  last_name               :string
#  marital_status          :string
#  middle_initial          :string
#  middle_name             :string
#  nationality             :string
#  preferred_name          :string
#  prior_last_name         :string
#  salutation              :string
#  smoker                  :boolean
#  ssn                     :string
#  start_date              :date
#  termination_date        :date
#  uuid                    :uuid
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_core_employee_informations_on_company_uuid   (company_uuid)
#  index_core_employee_informations_on_employee_uuid  (employee_uuid)
#  index_core_employee_informations_on_uuid           (uuid)
#
require 'rails_helper'

RSpec.describe Core::EmployeeInformation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
