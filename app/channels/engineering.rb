class Engineering < NetworkExecutive::Channel
  every :day, play:'github_status'
end
