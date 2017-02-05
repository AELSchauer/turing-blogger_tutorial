class Article < ApplicationRecord
  has_many :comments
  has_many :article_tags
  has_many :tags, through: :article_tags

  def tag_list
    tags.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(", ").map{ |s| s.strip.downcase }.uniq
    tag_names.each do |tag_name|
      tag = Tag.find_or_create_by(name: tag_name)
      self.tags << tag unless self.tags.include?(tag)
    end
  end
end