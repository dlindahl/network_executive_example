class Kitchen < NetworkExecutive::Channel
  schedule 'espn', duration: 12.minutes do
    hourly(1).minute_of_hour( 0 )
  end

  schedule 'animation_on_fox', duration: 8.minutes do
    hourly(1).minute_of_hour( 12 )
  end

  schedule 'comcast_tweets', duration: 8.minutes do
    hourly(1).minute_of_hour( 20 )
  end

  schedule 'vimeo', duration: 12.minutes do
    hourly(1).minute_of_hour( 28 )
  end

  schedule 'big_picture', duration: 8.minutes do
    hourly(1).minute_of_hour( 40 )
  end

  schedule 'five_hundred_pixels', duration: 12.minutes do
    hourly(1).minute_of_hour( 48 )
  end

end