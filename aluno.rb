class Aluno
    attr_accessor :matricula, :nome, :idade, :curso;

    def initialize (matricula, nome, idade, curso)
        @matricula = matricula;
        @nome = nome;
        @idade = idade;
        @curso = curso;
    end

    def to_string
        puts "
            MATRÍCULA: #{@matricula}\n
            NOME: #{@nome}\n
            IDADE: #{@idade}\n
            CURSO: #{@curso}\n
        ";
    end

end

