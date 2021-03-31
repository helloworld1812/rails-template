# == Schema Information
#
# Table name: core_company_staffs
#
#  core_company_uuid  :uuid             not null
#  core_created_at    :datetime
#  core_deleted_at    :datetime
#  core_updated_at    :datetime
#  email              :string
#  name               :string
#  phone_country_code :string
#  phone_extension    :string
#  phone_number       :string
#  status             :string
#  uuid               :uuid             not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_core_hrs_on_core_company_uuid  (core_company_uuid)
#
class Core::CompanyStaff < ApplicationRecord
end
