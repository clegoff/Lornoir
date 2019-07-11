class AcctsController < ApplicationController

    def index
        @comptes = Compte.all

        # @compte = Compte.find_by(email: 'c.legoff@cfa-insta.fr', password: '1234')
    end

    def create
        @compte = Compte.new(acct_params)

        # @debug = "___" + "test" + "___"
        # logger.info @debug.inspect

        # if (@compte.save)
        #     redirect_to @compte
        # else
        #     render 'index'
        # end


        # if (!Compte.present? (email: @compte.email))
            @compte.save
    end

    def signup
    end

    private def acct_params
        params.require(:compte).permit(:name, :lastname, :email, :password, :suser)
    end
end
