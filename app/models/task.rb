class Task < ApplicationRecord
  belongs_to :person, optional: true
end
