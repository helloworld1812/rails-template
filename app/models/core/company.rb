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
class Core::Company < ApplicationRecord
end
