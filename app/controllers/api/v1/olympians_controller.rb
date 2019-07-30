class  Api::V1::OlympiansController < ApplicationController
  def index
    case params['age']
    when 'youngest'
      render json: { youngest: Olympian.youngest }
    when 'oldest'
      render json: { oldest: Olympian.oldest }
    else
      render json: { olympians: Olympian.olympians }
    end
  end

  private

  def olympian_params

    params.require(:olympians).permit(:age)
  end
end
