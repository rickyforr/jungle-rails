class UserMailer < ApplicationMailer
default from: 'no-reply@jungle.com'
@order = Order.last
@email = @order.email
@id = @order.id
@line_item = LineItem.where(["order_id = ?", @order.id])


  def order_confirmation(order)


    mail(to: "richard.forrester@gmail.com", subject: `Order#{@id} has been received`)
  end
end