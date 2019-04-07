class Person < ApplicationRecord
    has_many :tasks, dependent: :nullify
end
