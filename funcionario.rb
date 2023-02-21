class Funcionario
    attr_reader :codigo, :ferias;
    attr_accessor :nome;

    def initialize(cod,nome)
        @codigo = cod;
        @nome = nome;
        @ferias = false;
    end

    def to_string
        puts "
        COD #{@codigo}\n
        NOME: #{@nome}\n
        FERIAS: #{@ferias}\n
        ";
    end

    def init_ferias
        @ferias = true;
    end

    def end_ferias
        @ferias = false;
    end

    private
    attr_writer :cod, :ferias;

end
