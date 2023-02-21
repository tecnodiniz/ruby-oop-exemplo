require_relative 'aluno';
require_relative 'funcionario';
require_relative 'professor';
require_relative 'turma';

cod_aluno = 3
cod_professor = 2
cod_turma = 0
alunos = [];
turmas = [];
funcionarios = [];
professores = [];

professores.push(Professor.new(1,'Professor 1','ADS'))
professores.push(Professor.new(2,'Professor 2','DIREITO'))
alunos.push(Aluno.new(1,'Eduardo',27,'ADS'))
alunos.push(Aluno.new(2,'Gabriela',23,'ADS'))
alunos.push(Aluno.new(3,'RICARDO',26,'DIREITO'))

puts 'Selecione uma opção:';
puts '[1] Gerenciar turma';
puts '[2] Gerenciar professor';
puts '[3] Gerenciar aluno';
puts '[0] sair';
puts '-----------------------------------';

option = gets.chomp();

while option != '0' do

    case option
        when '1'
            puts
            puts 'Selecione uma opção:';
            puts '[1] Cadastrar turma';
            puts '[2] Editar turma';
            puts '[3] Listar turmas';
            puts '[4] Adicionar aluno';
            puts '[0] sair';
            puts '-----------------------------------';
            turma_options = gets.chomp();

            while turma_options != '0' do
                case turma_options
                    when '1'
                        puts
                        puts 'Cadastrar turma';
                        puts 
                        puts 'Digite o nome';
                        nome = gets.chomp();
                        puts 
                        puts 'Digite o número da sala:';
                        sala_n = gets.chomp.to_i();
                        puts 'Digite o código do professor para adicioná-lo na turma:';
                        puts;
                        professores.each do |professor|
                            puts "#{professor.codigo} - #{professor.nome} - #{professor.disciplina}";
                            puts;
                            
                        end

                        numero = gets.chomp.to_i();

                        professores.select do |professor|
                            if numero == professor.codigo
                                puts 'Deseja adicioná-lo? [s],[n]';  

                                resposta = gets.chomp();

                                if resposta == 's'
                                    turmas << Turma.new(cod_turma+=1,nome,sala_n,professor);
                                    puts 'Turma cadastrada com sucesso';
    
                                    professor.to_string
    
                                elsif resposta == 'n'
                                        puts 'Operação cancelada';
                                        
                                else puts 'Opção inválida';                       
                                end
                            end
                        end

                    when '3'
                        puts 
                            turmas.each do |turma|
                                turma.to_string
                            end
                            puts
                    when '4'
                        puts 
                        puts 'Digite o número da turma:'
                        numero = gets.chomp.to_i();

                        turmas.select do |turma|
                            if numero == turma.numero
                                puts 'Digite a matricula do aluno que deseja selecionar:';
                                puts
                                alunos.each do |aluno|
                                        puts "#{aluno.matricula} - #{aluno.nome} - #{aluno.curso}"
                                        puts      
                                end
    
                                cod = gets.chomp.to_i()
    
                                alunos.select do |aluno|
                                        
                                    if cod == aluno.matricula
                                        puts 'Deseja adicioná-lo? [s],[n]';  
                                        resposta = gets.chomp();
                                        if resposta == 's'
                                            turma.add_aluno(aluno)    
                                            turma.show_alunos
                                            elsif resposta == 'n'
                                                    puts 'Operação cancelada';
                                            else
                                                puts 'Opção inválida';                       
                                        end
                                    end
                                end
    
                            end
                            
                        end
                       
                    else
                        puts
                        puts 'opção inválida';
                end
                puts
                puts 'Selecione uma opção:';
                puts '[1] Cadastrar turma';
                puts '[2] Editar turma';
                puts '[3] Listar turmas';
                puts '[4] Adicionar aluno';
                puts '[0] sair';
                puts '-----------------------------------';
    
                turma_options = gets.chomp();
            end

        when  '2'
            puts
            puts 'Selecione uma opção:';
            puts '[1] Cadastrar professor';
            puts '[2] Editar professor';
            puts '[3] Listar professores';
            puts '[0] sair';
            puts '-----------------------------------';

            professor_options = gets.chomp();

            while professor_options != '0' do
                case professor_options
                    when '1'
                        puts
                        puts 'Cadastrar professor';
                        puts 
                        puts 'Digite o nome';
                        nome = gets.chomp();
                        puts 
                        puts 'Digite a disciplina';
                        disciplina = gets.chomp();
                        
                        professores << Professor.new(cod_professor +=1, nome, disciplina);
                        puts 'Professor cadastrado';

                        professores.each do |professor|
                            puts "#{professor.codigo} - #{professor.nome} - #{professor.disciplina}";
                            puts;
                        end
                    when '2'
                        puts 'Digite o código do professor:';
                        numero = gets.chomp.to_i();

                        professores.each do |professor|
                            if numero == professor.codigo
                                puts "#{professor.codigo} - #{professor.nome} - #{professor.disciplina}";
                                puts;

                                puts 'Altere o nome:';
                                professor.nome = gets.chomp();
                                puts
                                puts 'Nome alterado!';

                                puts 'Altere a disciplina:';
                                professor.disciplina = gets.chomp();
                                puts
                                puts 'Disciplina alterada!';
                    
                                puts professor.to_string();
                            else
                                puts 'Professor não encontrado';
                                puts
                            end
                        end

                    when '3'
                        puts 
                            professores.each do |professor|
                                puts "#{professor.codigo} - #{professor.nome} - #{professor.disciplina}";
                            end
                            puts
                    else
                        puts
                        puts 'opção inválida';
                end
                puts
                puts 'Selecione uma opção:';
                puts '[1] Cadastrar professor';
                puts '[2] Editar professor';
                puts '[3] Listar professores';
                puts '[0] sair';
                puts '-----------------------------------';
    
                professor_options = gets.chomp();
            end
        when '3'
            puts
            puts 'Selecione uma opção:';
            puts '[1] Cadastrar aluno';
            puts '[2] Editar aluno';
            puts '[3] Listar alunos';
            puts '[0] sair';
            puts '-----------------------------------';

            aluno_option = gets.chomp();

            while aluno_option != '0' do
                case aluno_option
                    when '1'
                        puts 'Cadastrar aluno';
                        puts '';
                        puts 'Digite o nome do aluno:';
                        puts '';

                        nome = gets.chomp();
                        puts '';
                        puts 'idade:';
                        puts '';
                        idade = gets.chomp.to_i();
                        puts '';
                        puts 'curso:';
                        puts '';
                        curso = gets.chomp();
                        puts '';
                        alunos << Aluno.new(cod_aluno+=1,nome,idade,curso);
                        puts 'Aluno Cadastrado';

                        alunos.each do |aluno|
                            puts "#{aluno.matricula} --- #{aluno.nome}";
                            puts;
                        end
                    when '2'
                        puts 'Digite o nº da matricula';
                        numero = gets.chomp.to_i();
                        alunos.each do |aluno|
                            if numero == aluno.matricula
                                puts "#{aluno.matricula} - #{aluno.nome} - #{aluno.idade} - #{aluno.curso}\n";

                                puts 'Altere o nome:';
                                aluno.nome = gets.chomp();
                    
                                puts
                                puts 'Nome alterado!';

                                puts 'Altere a idade:';
                                aluno.idade = gets.chomp.to_i();
                    
                                puts
                                puts 'Idade alterada!';

                                puts 'Altere o curso:';
                                aluno.curso = gets.chomp();
                    
                                puts
                                puts 'Curso alterado!';
                    
                                puts aluno.to_string();
                            else
                                puts 'Aluno não encontrado';
                                puts
                            end
                        end
                    when '3'
                       puts 
                        alunos.each do |aluno|
                            puts "#{aluno.matricula} - #{aluno.nome} - #{aluno.idade} - #{aluno.curso}\n";
                        end
                        puts
                    else
                        puts
                        puts 'opção inválida';
                        puts
                end

                puts 'Selecione uma opção:';
                puts '[1] Cadastrar aluno';
                puts '[2] Editar aluno';
                puts '[3] Listar alunos';
                puts '[0] sair';
                puts '-----------------------------------';
    
                aluno_option = gets.chomp();
            end

        else
            puts 'Opção inválido';
            puts '';
    end
    puts 'Selecione uma opção:';
    puts '[1] Gerenciar turma';
    puts '[2] Gerenciar professor';
    puts '[3] Gerenciar aluno';
    puts '[0] sair';
    puts '-----------------------------------';
    
    option = gets.chomp();

end