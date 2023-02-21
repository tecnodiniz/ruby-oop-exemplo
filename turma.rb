class Turma
    attr_reader :n_alunos, :alunos;

    attr_accessor :alunos, :cod, :nome, :numero, :professor;

    def initialize(cod,nome, numero, professor)
        @cod = cod;
        @nome = nome;
        @numero = numero;
        @professor = professor;
        @alunos = [];
        @n_alunos = 0;
    end

    def to_string
        puts "
        NOME: #{@nome}\n
        SALA: #{@numero}\n
        PROFESSOR: #{@professor.nome}\n
        ALUNOS: #{@n_alunos}\n
        ";
    end

    def show_alunos
        @alunos.each do |aluno|
            puts "#{aluno.matricula} - #{aluno.nome}";
        end
    end

    def add_aluno(aluno)
        if alunos.include?(aluno) == true
            puts "Aluno já incluso";
        else
            alunos.push(aluno)
            @n_alunos += 1;
            puts "Aluno inserido";
            
        end
    end

    private
    attr_writer :n_alunos, :alunos;

end