class Employee < ApplicationRecord
  enum status: {
    active: 0,
    archived: 1,
    deleted: 2
  }
end
