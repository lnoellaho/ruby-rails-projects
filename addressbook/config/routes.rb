Rails.application.routes.draw do

  root 'contacts#getall'

  get 'contacts/create' => 'contacts#index'

  get 'contacts/add'

  get 'contacts/getall'

  get 'contacts/delete/:id' => 'contacts#delete'

  get 'contacts/:id' => 'contacts#getone'

  get 'contacts/update/:id/form' => 'contacts#updateform'

  get 'contacts/update/:id' => 'contacts#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
