class  Api::V1::OlympiansController < ApplicationController
  def index
    case params['age']
    when 'youngest'
      render json: Olympian.youngest
    else
      render json: { olympians: Olympian.olympians }
    end
  end

  private

  def olympian_params

    params.require(:olympians).permit(:age)
  end
end
