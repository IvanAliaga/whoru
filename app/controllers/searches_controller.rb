class SearchesController < ApplicationController
    def index
        @searches = Search.all
    end

    def show
        @search = Search.find(params[:id])
    end

    def new
        @search = Search.new
    end

    def create
        @search = Search.new(search_params)

        if @search.save
            redirect_to searches_path
        else
            render :new
        end
    end

    def edit
        @search = Search.find(params[:id])
    end

    def update
        @search = Search.find(params[:id])

        if @search.update(search_params)
            redirect_to search_path(@search)
        else
            render :edit
        end
    end

    def destroy
        @search = Search.find(params[:id])

        @search.destroy

        redirect_to searches_path
    end


    private

    def search_params
        params.require(:search).permit(:title, :description)
    end
end
