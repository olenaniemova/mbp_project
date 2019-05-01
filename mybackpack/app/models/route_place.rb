# frozen_string_literal: true

# Class Route Places (Settlements)
class RoutePlace < ApplicationRecord
  belongs_to :route
  belongs_to :settlement
end
