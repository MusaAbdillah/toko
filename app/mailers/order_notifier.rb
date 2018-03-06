class OrderNotifier < ApplicationMailer
  default from: 'Toko Buku Pragmatic <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order 

    mail to: order.email, subject: "Konfirmasi Pesanan - Toko Buku Pragmatic"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order 

    mail to: @order.email, subject: "Informasi Pengiriman - Toko Buku Pragmatic"
  end
end
