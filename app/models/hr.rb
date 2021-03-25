# == Schema Information
#
# Table name: hrs
#
#  id         :bigint           not null, primary key
#  email      :string
#  name       :string
#  phone      :string
#  status     :integer
#  uuid       :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#
# Indexes
#
#  index_hrs_on_company_id  (company_id)
#  index_hrs_on_uuid        (uuid)
#
class Hr < ApplicationRecord
  enum status: {
    active: 0,
    disabled: 1
  }
end
