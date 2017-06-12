class UserMailer < ApplicationMailer
default from: 'no-reply@jungle.com'

  def order_confirmation(order)
    @order = Order.last
    @email = @order.email
    @line_item = LineItem.where(["order_id = ?", @order.id])
    @product = []
      @line_item.each do |i|
      @product.push(Product.find(i.product_id))
    end

    mail(to: @email, subject: `Order#{@id} has been received`)
  end
end