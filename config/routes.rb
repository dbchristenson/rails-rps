Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "index"})
  get("/rock", { :controller => "pages", :action => "rock"})
  get("/paper", { :controller => "pages", :action => "paper"})
  get("/scissors", { :controller => "pages", :action => "scissors"})
end
