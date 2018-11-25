class StripeToken
  attr_accessor :credit_card_number, :expiration_month, :expiration_year, :cvc, :stripe_token
  delegate :id, to: :token

  def initialize(credit_card_number: nil, expiration_month: nil, expiration_year: nil, cvc: nil, stripe_token: nil)
    @credit_card_number = credit_card_number
    @expiration_month   = expiration_month
    @expiration_year    = expiration_year
    @cvc                = cvc
    @stripe_token       = stripe_token
  end

  def token
    @token ||= stripe_token ? retrive_token : create_token
  end

  def id
    stripe_token || token.id
  end

  private

  def retrive_token
    Stripe::Token.retrive(stripe_token)
  end

  def create_token
    Stripe::Token.create(
      card: {
        number: credit_card_number,
        exp_month: expiration_month,
        exp_year: expiration_year,
        cvc: cvc
      }
    )
  end

  def to_s
    "STRIPE TOKEN: #{id}"
  end

  def inspect
    "STRIPE TOKEN #{id}"
  end
end
