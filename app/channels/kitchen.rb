class Kitchen < NetworkExecutive::Channel
  schedule 'espn', duration: 15.minutes do
    minutely( 15 ).minute_of_hour( 0 )
    minutely( 15 ).minute_of_hour( 30 )
  end

  schedule 'animation_on_fox', duration: 15.minutes do
    minutely( 15 ).minute_of_hour( 15 )
    minutely( 15 ).minute_of_hour( 45 )
  end
end