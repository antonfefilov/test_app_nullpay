ActionMailer::Base.instance_eval do
  self.default from: "noreply@test_app_nullpay.com"
  self.default_url_options[:host] = ENV["HOST"]
end
