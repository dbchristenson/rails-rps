class ApplicationController < ActionController::Base
  skip_forgery_protection
end

class PagesController < ApplicationController
  def index
    render({ :template => "pages_templates/index"})
  end

  def rock
  end

  def paper
  end

  def scissors
  end
end
