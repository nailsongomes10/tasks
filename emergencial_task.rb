require_relative 'task'

class Emergencial_task < Task
  attr_accessor :responsible

  def initialize(nome_tarefa, responsavel, feito = false)
    super(nome_tarefa, feito)
    @responsible = responsavel
  end

  def to_s
    "Tarefa Emergencial!!!\nResponsável: #{responsible}\n#{super}"
  end
end
