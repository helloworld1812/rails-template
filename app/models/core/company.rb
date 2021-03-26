# == Schema Information
#
# Table name: core_companies
#
#  deleted_at :datetime
#  status     :string
#  uuid       :uuid
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_core_companies_on_uuid  (uuid)
#
class Core::Company < ApplicationRecord
end
