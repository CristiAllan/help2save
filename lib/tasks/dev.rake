namespace :dev do
  desc "Limpa e popula o banco de dados"
  task setup: :environment do
    puts "Resetando o banco.."
    %x(rails db:drop db:create db:migrate)
    puts "Concluido!"

    puts "Criando vários voluntários.."
    10.times do
      Voluntary.create!(
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: FFaker::Internet.email,
        password: 123456
      )
    end
    puts "Voluntários criados com sucesso!"

  end

end
