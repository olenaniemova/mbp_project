RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit do
      except ['Route']
    end
    delete do
      except ['Route']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.excluded_models = %i[ArticlesCategory ItemsWeatherType RoutePlace UserAvailableItem UserFavoriteFood]

  config.model 'ArticleCategory' do
    parent Article
  end
  # config.model 'Article' do
  #   show do
  #     include_fields :created_at, :updated_at
  #   end
  # end

  config.model 'FoodCategory' do
    parent Food
  end
  config.model 'FoodType' do
    parent Food
  end

  config.model 'ObjectCategory' do
    parent Item
  end
  config.model 'ObjectImportance' do
    parent Item
  end
  config.model 'Season' do
    parent Item
  end
  config.model 'WeatherType' do
    parent Item
  end

  config.model 'Profile' do
    parent User
  end
  config.model 'PhysicalCondition' do
    parent User
  end
  config.model 'SettlementType' do
    parent Settlement
  end
  config.model 'RouteStatus' do
    parent Route
  end
  models_witout = ['ArticleCategory', 'Chain', 'Complexity', 'FoodCategory', 'FoodType', 'ObjectCategory', 'ObjectImportance', 'Season', 'WeatherType', 'Producer', 'RoutePlace', 'RouteStatus', 'SettlementType', 'PhysicalCondition']
  models_witout.each do |imodel|
    config.model imodel do
      list do
        exclude_fields :created_at, :updated_at
      end
    end
  end
end
