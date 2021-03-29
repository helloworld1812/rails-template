# == Schema Information
#
# Table name: core_companies
#
#  core_created_at :datetime
#  core_deleted_at :datetime
#  core_updated_at :datetime
#  name            :string
#  status          :string
#  uuid            :uuid             not null, primary key
#
require 'rails_helper'

RSpec.describe Core::Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
