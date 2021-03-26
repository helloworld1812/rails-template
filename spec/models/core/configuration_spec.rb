# == Schema Information
#
# Table name: core_configurations
#
#  config            :jsonb
#  core_company_uuid :uuid             not null
#  deleted_at        :datetime
#  status            :string
#  uuid              :uuid
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_core_configurations_on_uuid  (uuid)
#
require 'rails_helper'

RSpec.describe Core::Configuration, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
