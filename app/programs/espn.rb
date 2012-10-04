class ESPN < NetworkExecutive::Program
  include NetworkExecutive::Components::YouTubePlayer

  def onload
    { user:'espn' }
  end
end