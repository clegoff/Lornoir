class AcctsController < ApplicationController

    def index
        @comptes = Compte.all
    end

    def create
        @compte = Compte.new(post_params)

        # if (@compte.save)
        #     redirect_to @compte
        # else
        #     render 'index'
        # end

        @compte.save
    end

    private def post_params
        params.require(:compte).permit(:name, :lastname, :email, :password, :suser)
    end

    def login
    end
end
