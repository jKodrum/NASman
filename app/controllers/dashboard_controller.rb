class DashboardController < ApplicationController
  def index
    @ip = %(10.10.220.233)
    @cmd = %(/cmd,/ck6fup6/fileBrowser_main/browse?fstatus=waiting&view=tree)
    @path = %(&path=%2F&share=public)
    @url = "http://" << @ip << @cmd << @path
    cookies[:authtok] = {
      value: "GQYlRjwQlKEwKPEMALtJRRSn9LJUijxMWnsOykzu+ckK7-6QV-3FUmpRUAYQfQuf"
    }
    cookies[:target] = {
      value: "cat",
      :domain  => :all
    }

    require 'open-uri'
    @body = open(@url).read

  end

  def NAS_login
    redirect_to user_session_path(:resource_name)
  end
end
