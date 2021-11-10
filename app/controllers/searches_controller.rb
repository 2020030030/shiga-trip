class SearchesController < ApplicationController
    before_action :authenticate_user!

  def search
    @target = params[:target]
		content = params[:content]
		method = params[:method]

		# hoge = params[:prefecture_id]

		if @target == 'user'
			@records = User.search_for(content, method)
		elsif @target == 'prefecture'
			@records = PostImage.search_for(content, method)
		end
  end

end
