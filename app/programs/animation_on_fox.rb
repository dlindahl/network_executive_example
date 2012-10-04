class AnimationOnFox < NetworkExecutive::Program
  include NetworkExecutive::Components::YouTubePlayer

  def onload
    { user:'animationonfox' }
  end
end