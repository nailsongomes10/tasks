class Task
  attr_accessor :name
  attr_writer :done

  def initialize(nome_tarefa, feito = false)
    @name = nome_tarefa
    @done = feito
  end

  def done?
    @done
  end

  def status
    done? ? 'Feita' : 'Não feita'
  end

  def include_text?(text)
    name.downcase.include?(text.downcase)
  end

  def to_s
    "Tarefa: #{name} - #{status}"
  end
end
