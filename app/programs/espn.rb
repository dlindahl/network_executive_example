class ESPN < NetworkExecutive::Program
  include NetworkExecutive::Components::YouTubePlayer

  def onready
    { user:'espn' }
  end
end