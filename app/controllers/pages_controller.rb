class PagesController < ApplicationController
  def todo
    @tasks = Task.all
  end
end
