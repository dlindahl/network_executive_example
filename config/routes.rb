NetworkExecutiveExample::Application.routes.draw do
  mount NetworkExecutive::Engine => '/example_network', as:'network_executive'

end
