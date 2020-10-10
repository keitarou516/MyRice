# class RicesController < ApplicationController
#     def create
#         answers = {answer1: 1, answer2: 1, answer3: 1} #paramsに変更する
#         answers = params[:selections]
        
#         rices = Rice.where(condition: answers[:answer1]).where(hard: answers[:answer2]).where(time: answers[:answer3])
#         render :json => rices
#     end
        
# end


class RicesController < ApplicationController

    def index
        answers = params[:selections]
        puts "selections = #{params}"

        rices = Rice.where(condition: answers[0]).where(hard: answers[1]).where(time: answers[2])
        render :json => rices
    end

    def create
        # answers = {answer1: 1, answer2: 1, answer3: 1} #paramsに変更する

        answers = params[:selections]
        puts "selections = #{params}"

        rices = Rice.where(condition: answers[0]).where(hard: answers[1]).where(time: answers[2])
        render :json => rices
    end

end