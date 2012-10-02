class Kitchen < NetworkExecutive::Channel
  schedule 'espn', duration: 20.minutes do
    minutely( 20 ).minute_of_hour( 0 )
  end

  schedule 'animation_on_fox', duration: 20.minutes do
    minutely( 20 ).minute_of_hour( 20 )
  end

  schedule 'comcast_tweets', duration: 20.minutes do
    minutely( 20 ).minute_of_hour( 40 )
  end
end