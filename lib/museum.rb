class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(feature)
    @exhibits << feature
  end

  def recommend_exhibits(patron)
    you_might_like = []
    patron.interests.map do |interest|
      @exhibits.map do |exhibit|
        if exhibit.name == interest
          you_might_like << exhibit
        end
      end
    end
    you_might_like.flatten
  end

  def admit(patron)
    @patrons << patron
  end
end
