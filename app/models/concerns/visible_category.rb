module VisibleCategory
    extend ActiveSupport::Concern

    VALID_CATEGORIES = ['foo', 'bar']

    included do 
        validates :category, inclusion: {in: VALID_CATEGORIES}
    end

    def selected_category?(selected_category)
        category == selected_category
    end
end