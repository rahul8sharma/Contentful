class Recipe
  include ContentfulRenderable

  # Get the credentials from config
  CREDENTIALS = Settings.contentful.credentials

  attr_accessor :contentful_id

  # Create class methods from contentful config variables
  class << self
    CREDENTIALS.each do |key, value|
      define_method key do
        value
      end
    end
  end
end
