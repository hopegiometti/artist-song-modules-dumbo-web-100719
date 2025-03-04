require 'pry'

class Song
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   # @@songs << self
  #   super
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
