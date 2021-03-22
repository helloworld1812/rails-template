class Company < ApplicationRecord
  enum status: {
    active: 0,
    test: 1,
    disabled: 2,
    template: 3
  }
end
