class WhosController < ApplicationController
    def index
        @whos = Who.all
    end

    def show
        @who = Who.find(params[:id])
    end

    def new
        @who = Who.new
    end

    def create
        @who = Who.new(who_params)

        if @who.save
            redirect_to whos_path
        else
            render :new
        end
    end

    def edit
        @who = Who.find(params[:id])
    end

    def update
        @who = Who.find(params[:id])

        if @who.update(who_params)
            redirect_to who_path(@who)
        else
            render :edit
        end
    end

    def destroy
        @who = Who.find(params[:id])

        @who.destroy

        redirect_to whos_path
    end


    private

    def who_params
        params.require(:who).permit(:title, :description)
    end
end
