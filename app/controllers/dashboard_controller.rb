class DashboardController < ApplicationController
  def index
    @ip = %(10.10.220.233)
    @cmd = %(/cmd,/ck6fup6/fileBrowser_main/browse?fstatus=waiting&view=tree)
    @path = %(&path=%2F&share=public)
    @url = "http://" << @ip << @cmd << @path
    #require 'open-uri'
    #@body = open(@url).read
    #@url = "http://google.com"
    require 'open-uri'
    @body = open(@url).read
  end

  def NAS_login
    redirect_to user_session_path(:resource_name)
  end
end
