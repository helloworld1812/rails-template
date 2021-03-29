# == Schema Information
#
# Table name: core_configurations
#
#  config            :jsonb
#  core_company_uuid :uuid             not null
#  core_created_at   :datetime
#  core_deleted_at   :datetime
#  core_updated_at   :datetime
#  status            :string
#  uuid              :uuid             not null, primary key
#
# Indexes
#
#  index_core_configurations_on_core_company_uuid  (core_company_uuid)
#
require 'rails_helper'

RSpec.describe Core::Configuration, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
