Rails.application.routes.draw do
    #---------------------#
    #===  ACTIONCABLE  ===#
    #---------------------#
    mount ActionCable.server => '/cable'
    #=====================#
    #---------------------#
    #===               ===#
    #===               ===#
    #===     ROOT      ===#
    #===               ===#
    #===               ===#
    #---------------------#
    #=====================#
    root to: "home#index"
    #---------------------#
    #---------------------#
    #---------------------#
end
