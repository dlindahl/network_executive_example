class Kitchen < NetworkExecutive::Channel
  schedule 'espn', duration: 15.minutes do
    minutely( 15 ).minute_of_hour( 0 )
  end

  schedule 'animation_on_fox', duration: 15.minutes do
    minutely( 15 ).minute_of_hour( 15 )
  end

  schedule 'comcast_tweets', duration: 15.minutes do
    minutely( 15 ).minute_of_hour( 30 )
  end

  schedule 'vimeo', duration: 15.minutes do
    minutely( 15 ).minute_of_hour( 45 )
  end
end