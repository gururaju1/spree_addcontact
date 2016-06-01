module Spree
  class ContactsController < Spree::StoreController
  
   def index
     @contacts = Spree::Contact.all
   end
   
   def show
     @contact = Spree::Contact.find(params[:id])
   end
   
   def new
     @contact =Spree::Contact.new
      @sexs = ["male" ,"female"]
   end
   
   def create
    @contact = Spree::Contact.new(contact_params)
     @sexs = ["male" ,"female"]
    if @contact.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
   end
   
   def edit
     @contact = Spree::Contact.find(params[:id])
    @sexs = ["male" ,"female"]
   end
   
   def update
    @contact = Spree::Contact.find(params[:id])
    @sexs = ["male" ,"female"]
    if @contact.update_attributes(contact_param)
      redirect_to :action => 'show', :id => @contact
    else
      render :action => 'edit'
    end
   end
   
   def delete
      Spree::Contact.find(params[:id]).destroy
      redirect_to :action => 'index'
   end
    
   def contact_params
    params.require(:contact).permit(:name, :birthday, :sex, :email,  :address,  :relationship, :contactimage)
   end
     
  end
end