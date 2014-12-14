class DashboardController < ApplicationController
  def index
    opt = params[:format] ? params[:format] : "public"
    ip = %(10.10.220.233)
    cmd = %(/cmd,/ck6fup6/fileBrowser_main/browse?fstatus=waiting&view=grid)
    path = %(&path=/)
    folder = %(&share=)
    @url = "http://" << ip << cmd << path << folder << opt
    # escape '&'
    url_escape = @url.gsub(/\&/, '\\\&')
    token = "AQkUy7UENZNXbE2L4t8Kl6vWZMALfANNETHNqGq-xTG1OV90q0l2mebOuu92SLcI"
    @body = %x(python3 python/nas.py #{url_escape} #{token} 2>&1).from(2).to(-3)
    @hash = JSON.parse @body
  end

  def new
  end

  def rename
    @base = %(http://10.10.220.233/cmd,/ck6fup6/fileBrowser_main/rename?)
    @old_path = "old_path=" << params[:old_path]
    @share = "&share=public"
    @target = "&target_type=folder"
    @new = "&new_path=%2FDokumenter"
  end
end
