require_relative 'task'

INSERIR_TAREFA = 1
VER_TAREFAS = 2
BUSCAR_TAREFAS = 3
MARCAR_COMO_FEITO = 4
SAIR = 5
OPCAO_INVALIDA = -1

puts 'Bem-vindo a lista de tarefas'

def menu
  puts 'Escolha uma opção'
  puts "#{INSERIR_TAREFA} - Inserir tarefa"
  puts "#{VER_TAREFAS} - Ver Tarefas"
  puts "#{BUSCAR_TAREFAS} - Buscar tarefas"
  puts "#{MARCAR_COMO_FEITO} - Marcar uma tarefa como feita"
  puts "#{SAIR} - Sair"
  gets.to_i
end

def imprimir_tarefas(tarefas_para_imprimir)
  tarefas_para_imprimir.each do |t|
    puts t
  end
end

 opcao = OPCAO_INVALIDA
 tarefas = []
 tarefas_concluidas = []

while opcao != SAIR do

  if opcao == INSERIR_TAREFA
    puts 'Informe o nome da tarefa'
    nome_tarefa = gets.chomp

    puts 'Tarefa já realizada? Sim: 1 -- Não: 2'
    status_tarefa = gets.to_i

    if status_tarefa == 1
      tarefa = Task.new(nome_tarefa, true)
    elsif
      tarefa = Task.new(nome_tarefa)
    end

    tarefa = Task.new(nome_tarefa)

    tarefas << tarefa

    puts "Nova tarefas cadastrada: #{nome_tarefa}"

  elsif opcao == VER_TAREFAS
    puts 'Ver todas tarefas'

    imprimir_tarefas(tarefas)

  elsif opcao == BUSCAR_TAREFAS
    puts 'Buscar tarefas'

    puts 'Informe um texto para buscar:'
    texto_busca = gets.chomp.downcase

    tarefas_encontradas = tarefas.select do |t|
      t.include_text? texto_busca
    end

    imprimir_tarefas(tarefas_encontradas)

  end

opcao = menu

end

puts 'Até logo'
