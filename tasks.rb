INSERI_TAREFA = 1
VER_TAREFAS = 2
SAIR = 0

def menu()
  puts 'Escolha uma tarefa'
  puts "#{INSERI_TAREFA} - Inserir uma tarefa"
  puts "#{VER_TAREFAS} - Ver todas tarefas"
  puts '3 - Tarefa finalizada'
  puts "#{SAIR} - Sair"
end

  tarefas = []

  puts 'Bem-vindo ao Task List'

menu

  opcao = gets.to_i

  puts "Opção Escolhida: #{opcao}"

  while(opcao != SAIR) do

    if(opcao == INSERI_TAREFA)
      puts 'Informe o nome da tafera'
      nome_tarefa = gets.chomp
      tarefas << "Tarefa: #{nome_tarefa}"
      puts 'Nova tarefa cadastrada com sucesso'

    elsif(opcao == VER_TAREFAS)
      puts tarefas
    elsif(opcao == 3)
      puts 'Tarefas finalizadas'
    end

    menu

    opcao = gets.to_i
  end

puts 'Até logo'
