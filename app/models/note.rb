class Note < ApplicationRecord
  has_and_belongs_to_many :tags
  validates :title, :body, presence: true

  def tag_list
    self.tags.map { |tag| tag.name }.join(', ')
  end

  def tag_list=(tag_list)
    self.tags.clear
    tags = tag_list.split(',').map { |tag| tag.strip.downcase }.uniq
    tags.each do |tag_name|
      tag = Tag.find_or_create_by(name: tag_name)
      tag.name = tag_name
      self.tags << tag
    end
  end
end
