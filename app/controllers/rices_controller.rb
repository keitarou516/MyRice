class RicesController < ApplicationController
    def create
        answers = {answer1: 1, answer2: 1, answer3: 1} #paramsに変更する
        answers = params[:selections]
        
        rices = Rice.where(condition: answers[:answer1]).where(hard: answers[:answer2]).where(time: answers[:answer3])
        render :json => rices
    end
        
end


