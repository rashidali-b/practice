class DemoController < ApplicationController
  
  def index
    # render ('hello')
    @array=[2,3,4,6,7,8,9]
  end
  def hello
    render('hello')
  end
  def hello1
    redirect_to(:controller => 'demo',:action=> 'index')
  end
  def youtube
    # redirect_to('https://www.youtube.com')
  end
end
