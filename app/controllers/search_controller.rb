class SearchController < ApplicationController
  def search
    if category = params[:category]
      params = URI.encode_www_form({category_name: category)
      uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?#{params}")
      response = Net::HTTP.get_response(uri)
      result = JSON.parse(response.body)
    end
  end
  render json: @ideas
end
