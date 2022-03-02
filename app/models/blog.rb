class Blog < ApplicationRecord

    with_options presence: true do
        validates :title
        validates :content
    end
    with_options length: { minimum: 1, maximum: 140} do
        validates :title
        validates :content
    end

end
