# == Schema Information
#
# Table name: core_employee_informations
#
#  apply_date              :date
#  core_company_uuid       :uuid             not null
#  core_created_at         :datetime
#  core_deleted_at         :datetime
#  core_employee_uuid      :uuid             not null
#  core_updated_at         :datetime
#  date_of_birth           :date
#  department_name         :string
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
#  uuid                    :uuid             not null, primary key
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_core_ei_on_company_uuid   (core_company_uuid)
#  index_core_ei_on_employee_uuid  (core_employee_uuid)
#
class Core::EmployeeInformation < ApplicationRecord
end
