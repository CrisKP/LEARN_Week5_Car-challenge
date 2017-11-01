Rails.application.routes.draw do
  get 'status' => 'car_simulators#show'

  get 'create' => 'car_simulators#create'
end
