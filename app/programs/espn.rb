class ESPN < NetworkExecutive::Program
  include NetworkExecutive::Components::YouTubePlayer

  def display_name
    'ESPN'
  end

  def onload
    { user:'espn' }
  end
end