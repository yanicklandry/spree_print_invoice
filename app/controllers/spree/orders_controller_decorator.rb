Spree::OrdersController.class_eval do
  respond_to :pdf

  def show
    @order = Spree::Order.find_by_number!(params[:id])
    respond_with(@order) do |format|
      format.pdf do
        template = params[:template] || "invoice"
        render :layout => false , :template => "spree/orders/#{template}.pdf.prawn"
      end
    end
  end
end
