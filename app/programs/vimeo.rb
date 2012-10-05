class Vimeo < NetworkExecutive::Program
  def display_name
    'Best of Vimeo'
  end

  def refresh
    false
  end

  def url
    'http://vimeo.com/couchmode/staffpicks'
  end
end
