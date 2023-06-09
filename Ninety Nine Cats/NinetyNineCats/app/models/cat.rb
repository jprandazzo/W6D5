class Cat < ApplicationRecord
    validates :birth_date, :name, :sex, :color, presence: true
    
    CAT_COLORS = [:orange, :grey, :black, :white, :brown]

    validates :color, inclusion: { in: CAT_COLORS,
    message: "%not a valid color" }
    
    validates :sex, inclusion: { in: [:m,:f],
    message: "must be m or f" }

    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        unless :birth_date < Date.today
            errors.add(:birth_date, "can't be in the future")
        end
    end

    def age
        (Date.today - :birth_date).to_i/365
    end
end
