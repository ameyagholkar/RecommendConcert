module RecommendationsHelper

  def display_username(id)
     User.find(id).username
  end

  def get_concert(id)
    Concert.find(id)
  end
end
