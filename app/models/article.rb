class Article < ApplicationRecord
    include Visible
    include VisibleCategory

    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: {minimum:1}
end
