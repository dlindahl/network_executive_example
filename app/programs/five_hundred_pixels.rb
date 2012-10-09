class FiveHundredPixels < NetworkExecutive::Program
  include NetworkExecutive::Components::PhotoPlayer

  cattr_accessor :credentials

  def display_name
    '500px'
  end

  def feed_url
    "https://api.500px.com/v1/photos?feature=popular&image_size=5&consumer_key=#{self.class.credentials[:key]}"
  end

  def items
    feed['photos'].each_with_object([]) do |item, feed|
      image_url = item['image_url']
      location  = [ item['user']['city'], item['user']['country'] ].reject{|s| s.empty? }.join(', ')

      feed << {
        title:        item['name'],
        description:  item['description'],
        image_url:    image_url,
        photographer: item['user']['fullname'],
        location:     location
      }
    end
  rescue
    Rails.logger.error "#{$!.class}: #{$!.message} (#{$!.backtrace.first})"
    # ...
  ensure
    {}
  end

end
