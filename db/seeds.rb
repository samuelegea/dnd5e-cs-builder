Dir['./db/seeds/*.rb'].each { |file| require file }

admin = AdminUser.find_by(email: 'admin@example.com')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development? && !admin