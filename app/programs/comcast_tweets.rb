class ComcastTweets < NetworkExecutive::Program
  include NetworkExecutive::Components::TweetPlayer

  search '#comcast', count: 75
end
