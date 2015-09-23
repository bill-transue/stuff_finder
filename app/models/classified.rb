class Classified < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
end

module Animal
  class Bat
  end
end

module BaseballUtils
  class Bat
  end
end
