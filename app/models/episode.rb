class Episode < ActiveRecord::Base
  validates :title, :uniqueness => { :case_sensitive => false }, :presence => true
  has_many :comments
  has_many :episodes_report
  belongs_to :anime
  scope :previous, lambda { |p| {:conditions => ["episode_number < ? && anime_id = ?", p.episode_number, p.anime_id], :limit => 1, :order => "episode_number DESC"} }
  scope :next, lambda { |p| {:conditions => ["episode_number > ? && anime_id = ?", p.episode_number, p.anime_id], :limit => 1, :order => "episode_number"} }
  before_save :default_values

  define_index do
    indexes :title
    indexes :episode_number
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end

  def default_values
    self.counter ||= 0
  end
end
