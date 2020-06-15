class Picture < ApplicationRecord
    belongs_to :user
    has_many :picture_tags
    has_many :tags, through: :picture_tags

    accepts_nested_attributes_for :tags
    #accepts_nested_attributes_for :comments

    def tags_attributes=(tag_attributes)
        tag_attributes.values.each do |tag_attribute|
            tag = Tag.find_or_create_by(tag_attribute)
            self.tags << tag
        end
    end
end
