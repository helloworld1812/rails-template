# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :integer
#  uuid       :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_companies_on_uuid  (uuid)
#
class Company < ApplicationRecord
  enum status: {
    active: 0,
    test: 1,
    disabled: 2,
    template: 3
  }
end
