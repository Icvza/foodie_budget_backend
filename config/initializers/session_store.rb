if Rails.env === 'production' 
     Rails.application.config.session_store :cookie_store, key: '_foodie-budget-backend', domain: 'foodie-budget-backend-json-api'
   else
     Rails.application.config.session_store :cookie_store, key: '_foodie-budget-backend'
end 