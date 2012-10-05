class BigPicture < NetworkExecutive::Program
  include NetworkExecutive::Components::PhotoPlayer

  def display_name
    'The Big Picture'
  end

  def feed_url
    "http://pipes.yahoo.com/pipes/pipe.run?NumStories=5&Start=1&_id=e5ecd8ffbee522fccb5b2b3b6b776fd5&_render=json"
  end

  RawDesc      = %r{<.+>(?<raw>.*)}
  Title        = %r{(?<title>.*) \(}
  Photographer = %r{\((?<photog>[A-Z][^\/]+)}
  Location     = %r{in (?<city>[A-Z]{1}[^,]*), (?<country>[A-Z]+[a-z]+ *(?:and)*(?:[A-Z][a-z]+)* *(?:[A-Z][a-z]+)*)}

  def photos
    feed['value']['items'].each_with_object([]) do |item, feed|
      image_url = item['media:group']['media:content']['url']
      desc      = item['description'].match( RawDesc )

      if desc[:raw]
        descr        = (desc[:raw].match(Title)||{})[:title]
        raw_loc      = (desc[:raw].match(Location)||{})
        location     = [ raw_loc[:city], raw_loc[:country] ].compact.join(', ')
        photographer = (desc[:raw].match(Photographer)||{})[:photog]

        feed << {
          title:        location.strip,
          description:  descr.strip,
          image_url:    image_url,
          photographer: photographer.strip,
          location:     ''
        }
      end
    end
  end

end
