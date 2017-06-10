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
        description: FFaker::LoremFR.paragraph,
        email: FFaker::Internet.email,
        password: 123456
      )
    end
    puts "Voluntários criados com sucesso!"

    puts "Criando várias instituições.."
    9.times do
      Institution.create!(
        name: FFaker::Movie.title,
        cnpj: FFaker::PhoneNumber.imei,
        description: FFaker::LoremFR.paragraph,
        email: FFaker::Internet.email,
        password: 123456
      )
    end
    puts "Instituições criadas com sucesso!"

    puts "Criando vários trabalhos.."
    Institution.all.each do |institution|
      institution.jobs.create!(
        title: FFaker::Movie.title,
        description: FFaker::LoremFR.paragraph,
        start_date: Date.today,
        end_date: Date.today + 3.days
      )
    end
    puts "Trabalhos criados com sucesso!"

  end

end
