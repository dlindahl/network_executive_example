class Vimeo < NetworkExecutive::Program
  def refresh
    false
  end

  def url
    'http://vimeo.com/couchmode/staffpicks'
  end
end
