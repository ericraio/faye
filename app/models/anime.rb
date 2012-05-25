class Anime < ActiveRecord::Base
  validates_uniqueness_of :title
  has_many :episodes

  define_index do
    indexes title
    indexes description
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
