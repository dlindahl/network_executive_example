class Kitchen < NetworkExecutive::Channel
  every :day, play:'espn',             for_the_first:'30min', of:'each hour'
  every :day, play:'animation_on_fox', for_the_last:'30min',  of:'each hour'
end