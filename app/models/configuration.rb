# == Schema Information
#
# Table name: configurations
#
#  config              :jsonb
#  core_company_uuid   :uuid             not null
#  default_assignments :jsonb
#  deleted_at          :datetime
#  status              :string
#  uuid                :uuid             not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_core_configurations_on_core_company_uuid  (core_company_uuid)
#
class Configuration < ApplicationRecord
end
