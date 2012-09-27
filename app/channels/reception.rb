class Reception < NetworkExecutive::Channel
  every :day, play:'cnn',     for_the_first:'30min', of:'each hour'
  every :day, play:'weather', for_the_last:'30min',  of:'each hour'
end