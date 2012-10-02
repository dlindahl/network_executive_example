class Weather < NetworkExecutive::Program
  def url
    'http://www.wunderground.com/cgi-bin/findweather/getForecast?brand=wxmap&query=38.93844,-77.16538&lat=38.93844&lon=-77.16538&zoom=11&type=terrain&units=english&rad=0&sat=0&svr=0&cams=0&tor=0&wxsn=1&wxsn.mode=tw&wxsn.bcdgtemp=false&wxsn.opa=50&pep=0'
  end
end