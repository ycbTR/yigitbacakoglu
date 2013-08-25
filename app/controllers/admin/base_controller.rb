module Admin
  class BaseController < ApplicationController
    before_filter :authenticate_user!
    layout 'admin'
    helper 'base'
  end
end