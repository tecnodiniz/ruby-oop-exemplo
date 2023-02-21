require_relative 'funcionario';


class Professor < Funcionario
    attr_accessor :disciplina;

    def initialize(cod, nome,disciplina)
        super(cod,nome);
        @disciplina = disciplina;
    end

    def to_string
        puts "
        COD #{@codigo}\n
        NOME: #{@nome}\n
        FERIAS: #{@ferias}\n
        DISCIPLINA: #{@disciplina}\n
        ";
    end


end