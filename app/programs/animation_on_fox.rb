class AnimationOnFox < NetworkExecutive::Program
  include NetworkExecutive::Components::YouTubePlayer

  def onready
    { user:'animationonfox' }
  end
end