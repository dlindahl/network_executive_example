class Reception < NetworkExecutive::Channel
  schedule 'cnn', duration: 30.minutes do
    minutely 30
  end

  schedule 'weather', duration: 30.minutes do
    minutely( 30 ).minute_of_hour( 30 )
  end
end