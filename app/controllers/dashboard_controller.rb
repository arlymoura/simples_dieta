class DashboardController < ApplicationController
  def index
    #@dietaries = current_user.dietaries.group(:weight)
     #                                  .group_by_day(:created_at).count
  end
end
