# == Schema Information
#
# Table name: core_employees
#
#  core_company_uuid :uuid             not null
#  core_created_at   :datetime
#  core_deleted_at   :datetime
#  core_updated_at   :datetime
#  uuid              :uuid             not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_core_employees_on_core_company_uuid  (core_company_uuid)
#
require 'rails_helper'

RSpec.describe Core::Employee, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
