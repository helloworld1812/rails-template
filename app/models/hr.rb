class Hr < ApplicationRecord
  enum status: {
    active: 0,
    disabled: 1
  }
end
