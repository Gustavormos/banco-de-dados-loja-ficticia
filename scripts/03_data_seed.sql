BEGIN TRANSACTION

-- Editoras (EditoraID, Nome, Contato)
INSERT INTO Editoras VALUES
(1, 'Saraiva', 'contato@saraivaeditora.com.br'),
(2, 'Companhia das Letras', 'relacionamento@companhiadasletras.com.br'),
(3, 'Record', 'faleconosco@record.com.br'),
(4, 'Ática', 'atendimento@aticaeditora.com.br'),
(5, 'Moderna', 'sac@moderna.com.br'),
(6, 'Rocco', 'contato@rocco.com.br'),
(7, 'Sextante', 'contato@sextante.com.br'),
(8, 'Intrínseca', 'ouvidoria@intrinseca.com.br'),
(9, 'HarperCollins', 'contato@harpercollins.com.br'),
(10, 'Arqueiro', 'sac@arqueiroeditora.com.br'),
(11, 'Aleph', 'contato@editoraaleph.com.br'),
(12, 'Suma', 'atendimento@suma.com.br'),
(13, 'Paralela', 'faleconosco@paralela.com.br'),
(14, 'Globo Livros', 'contato@globolivros.com.br'),
(15, 'Nova Fronteira', 'sac@novafronteira.com.br');

-- Autores (AutorID, Nome, Biografia)
INSERT INTO Autores VALUES
(1, 'Machado de Assis', 'Principal escritor do Realismo brasileiro, fundador da Academia Brasileira de Letras'),
(2, 'Clarice Lispector', 'Escritora ucraniano-brasileira conhecida por sua prosa introspectiva e inovadora'),
(3, 'Jorge Amado', 'Romancista brasileiro que retratou a cultura e o povo da Bahia'),
(4, 'Carlos Drummond de Andrade', 'Um dos maiores poetas brasileiros do século XX'),
(5, 'Monteiro Lobato', 'Pioneiro da literatura infantil no Brasil, criador do Sítio do Picapau Amarelo'),
(6, 'Graciliano Ramos', 'Escritor alagoano conhecido por obras como "Vidas Secas"'),
(7, 'Rachel de Queiroz', 'Primeira mulher a ingressar na Academia Brasileira de Letras'),
(8, 'Guimarães Rosa', 'Autor de "Grande Sertão: Veredas", revolucionou a linguagem literária'),
(9, 'Cecília Meireles', 'Poetisa, professora e jornalista brasileira da fase modernista'),
(10, 'Lima Barreto', 'Escritor pré-modernista que retratou a vida urbana do Rio de Janeiro'),
(11, 'Erico Verissimo', 'Importante romancista gaúcho, autor de "O Tempo e o Vento"'),
(12, 'Lygia Fagundes Telles', 'Uma das mais importantes escritoras brasileiras do século XX'),
(13, 'Rubem Fonseca', 'Mestre do conto e romance policial brasileiro'),
(14, 'Paulo Coelho', 'Autor best-seller conhecido internacionalmente por "O Alquimista"'),
(15, 'George Orwell', 'Autor de "1984", conhecido por críticas ao totalitarismo'),
(16, 'J.K. Rowling', 'Criadora da série Harry Potter'),
(17, 'Stephen King', 'Mestre do terror contemporâneo'),
(18, 'Agatha Christie', 'Rainha do crime e mistério na literatura'),
(19, 'Yuval Noah Harari', 'Historiador israelense autor de "Sapiens"'),
(20, 'J.R.R. Tolkien', 'Autor da saga O Senhor dos Anéis'),
(21, 'Frank Herbert', 'Criador do universo de Duna');

-- Gêneros (GeneroID, Nome)
INSERT INTO Generos VALUES
(1, 'Romance'),
(2, 'Ficção Científica'),
(3, 'Fantasia'),
(4, 'Terror'),
(5, 'Literatura Brasileira'),
(6, 'Poesia'),
(7, 'Infantojuvenil'),
(8, 'Biografia'),
(9, 'História'),
(10, 'Autoajuda');

-- Produtos (LivroID, Título, AutorID, EditoraID, ISBN, GeneroID, Edicao, Formato, Preco, Custo, QuantidadeEstoque, DataCadastro, Descrição, CapaURL)
INSERT INTO Produtos VALUES
(1, 'Dom Casmurro', 1, 1, '9788535914843', 5, '1ª edição', 'Capa dura', 39.90, 20.00, 50, '2023-01-15', 'Clássico da literatura brasileira sobre ciúme e ambiguidade', 'https://exemplo.com/capas/domcasmurro.jpg'),
(2, 'Memórias Póstumas de Brás Cubas', 1, 1, '9788535914867', 5, '3ª edição', 'Brochura', 29.90, 15.00, 40, '2023-01-20', 'Narrado por um defunto-autor, crítica à sociedade brasileira', 'https://exemplo.com/capas/memoriaspostumas.jpg'),
(3, 'A Hora da Estrela', 2, 2, '9788501108340', 5, '5ª edição', 'Brochura', 34.90, 17.00, 35, '2023-02-10', 'Última obra de Clarice Lispector, história de Macabéa', 'https://exemplo.com/capas/horaestrela.jpg'),
(4, 'Gabriela, Cravo e Canela', 3, 2, '9788501010149', 5, '12ª edição', 'Brochura', 42.50, 21.00, 60, '2023-02-15', 'História de amor na Bahia dos anos 1920', 'https://exemplo.com/capas/gabriela.jpg'),
(5, 'Vidas Secas', 6, 3, '9788520923717', 5, '7ª edição', 'Brochura', 31.50, 15.75, 45, '2023-03-01', 'Drama da família de retirantes nordestinos', 'https://exemplo.com/capas/vidassecas.jpg'),
(6, 'O Alquimista', 14, 6, '9788576653722', 1, '25ª edição', 'Brochura', 29.90, 12.00, 100, '2023-03-15', 'Fábula sobre seguir seus sonhos', 'https://exemplo.com/capas/alquimista.jpg'),
(7, 'O Sítio do Picapau Amarelo', 5, 4, '9788578938452', 7, '10ª edição', 'Capa dura', 49.90, 25.00, 70, '2023-04-10', 'Clássico infantil com Emília e Visconde', 'https://exemplo.com/capas/sitio.jpg'),
(8, '1984', 15, 7, '9788525431166', 2, '1ª edição', 'Brochura', 45.00, 22.50, 55, '2023-04-15', 'Distopia sobre vigilância e controle totalitário', 'https://exemplo.com/capas/1984.jpg'),
(9, 'Harry Potter e a Pedra Filosofal', 16, 8, '9788532530799', 3, '1ª edição', 'Capa dura', 59.90, 30.00, 120, '2023-05-01', 'Primeiro livro da saga do jovem bruxo', 'https://exemplo.com/capas/hp1.jpg'),
(10, 'O Iluminado', 17, 7, '9788599296578', 4, '2ª edição', 'Brochura', 49.90, 25.00, 65, '2023-05-10', 'Terror psicológico no hotel Overlook', 'https://exemplo.com/capas/iluminado.jpg'),
(11, 'Assassinato no Expresso do Oriente', 18, 9, '9788532527584', 1, '1ª edição', 'Brochura', 39.90, 20.00, 40, '2023-06-01', 'Clássico mistério com Hercule Poirot', 'https://exemplo.com/capas/expressooriente.jpg'),
(12, 'Sapiens', 19, 10, '9788525432187', 9, '5ª edição', 'Brochura', 54.90, 27.00, 90, '2023-06-15', 'História da evolução humana', 'https://exemplo.com/capas/sapiens.jpg'),
(13, 'Orgulho e Preconceito', 11, 2, '9788594318147', 1, '3ª edição', 'Brochura', 29.90, 15.00, 50, '2023-07-01', 'Clássico romance entre Elizabeth e Mr. Darcy', 'https://exemplo.com/capas/orgulho.jpg'),
(14, 'O Senhor dos Anéis: A Sociedade do Anel', 20, 6, '9788533613405', 3, '1ª edição', 'Capa dura', 69.90, 35.00, 85, '2023-07-15', 'Primeiro volume da trilogia épica', 'https://exemplo.com/capas/sociedadeanel.jpg'),
(15, 'Duna', 21, 11, '9788576572009', 2, '1ª edição', 'Brochura', 59.90, 30.00, 70, '2023-08-01', 'Clássico da ficção científica no deserto de Arrakis', 'https://exemplo.com/capas/duna.jpg');

-- Clientes (ClienteID, Nome, Email, Telefone, Endereco, DataCadastro)
INSERT INTO Clientes VALUES
(1, 'Ana Paula Silva', 'ana.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123 - São Paulo, SP', '2023-01-10'),
(2, 'Bruno Oliveira', 'bruno.oliveira@email.com', '(21) 99876-5432', 'Av. Atlântica, 456 - Rio de Janeiro, RJ', '2023-01-15'),
(3, 'Carla Mendes', 'carla.mendes@email.com', '(31) 91234-5678', 'Rua Minas Gerais, 789 - Belo Horizonte, MG', '2023-02-05'),
(4, 'Diego Souza', 'diego.souza@email.com', '(41) 92345-6789', 'Rua Paraná, 321 - Curitiba, PR', '2023-02-20'),
(5, 'Elisa Martins', 'elisa.martins@email.com', '(51) 93456-7890', 'Av. Ipiranga, 654 - Porto Alegre, RS', '2023-03-01'),
(6, 'Felipe Rocha', 'felipe.rocha@email.com', '(61) 94567-8901', 'SHN Quadra 2, Bloco E - Brasília, DF', '2023-03-10'),
(7, 'Gabriela Lima', 'gabriela.lima@email.com', '(71) 95678-9012', 'Av. Sete de Setembro, 111 - Salvador, BA', '2023-03-15'),
(8, 'Henrique Castro', 'henrique.castro@email.com', '(85) 96789-0123', 'Rua das Acácias, 77 - Fortaleza, CE', '2023-04-01'),
(9, 'Isabela Ferreira', 'isabela.ferreira@email.com', '(91) 97890-1234', 'Travessa dos Pinhais, 88 - Belém, PA', '2023-04-20'),
(10, 'João Pedro Almeida', 'joao.almeida@email.com', '(95) 98901-2345', 'Rua dos Ipês, 100 - Boa Vista, RR', '2023-05-05');

-- Funcionarios (FuncionarioID, Nome, Cargo, Salario, DataContratacao)
INSERT INTO Funcionarios VALUES
(1, 'Marcos Andrade', 'Gerente de Vendas', 7500.00, '2022-01-10'),
(2, 'Renata Moreira', 'Atendente', 3200.00, '2022-03-15'),
(3, 'Lucas Pereira', 'Caixa', 2900.00, '2022-05-01'),
(4, 'Juliana Costa', 'Assistente Administrativo', 3500.00, '2022-06-20'),
(5, 'Fernando Lima', 'Analista de Estoque', 4000.00, '2022-08-05'),
(6, 'Amanda Martins', 'Supervisora de Loja', 5000.00, '2022-10-12'),
(7, 'Carlos Eduardo', 'Vendedor', 2800.00, '2023-01-08'),
(8, 'Patrícia Ribeiro', 'Atendente', 3200.00, '2023-02-17'),
(9, 'Thiago Souza', 'Caixa', 2900.00, '2023-03-10'),
(10, 'Vanessa Rocha', 'Gerente Financeira', 8200.00, '2023-04-25');

-- Vendas (VendaID, ClienteID, FuncionarioID, DataVenda, Total, MetodoPagamento)
INSERT INTO Vendas VALUES
(1, 1, 2, '2023-01-10T14:30:00', 119.80, 'Cartão de Crédito'),
(2, 2, 1, '2023-01-12T09:15:00', 49.90, 'Dinheiro'),
(3, 3, 3, '2023-01-15T16:45:00', 89.70, 'Boleto'),
(4, 4, 2, '2023-01-18T11:00:00', 39.90, 'Pix'),
(5, 5, 1, '2023-01-20T17:20:00', 159.70, 'Cartão de Débito'),
(6, 6, 3, '2023-01-22T10:05:00', 99.80, 'Transferência Bancária'),
(7, 7, 2, '2023-01-25T15:30:00', 45.00, 'Cartão de Crédito'),
(8, 8, 1, '2023-01-28T13:10:00', 59.90, 'Dinheiro'),
(9, 9, 3, '2023-01-30T08:55:00', 109.80, 'Pix'),
(10, 10, 2, '2023-02-02T14:00:00', 69.90, 'Cartão de Crédito');

-- ItensVenda (ItemVendaID, VendaID, LivroID, Quantidade, PrecoUnitario)
INSERT INTO ItensVenda VALUES
(1, 1, 1, 1, 39.90),
(2, 1, 2, 2, 39.95),
(3, 2, 3, 1, 49.90),
(4, 2, 4, 1, 49.90),
(5, 3, 5, 1, 39.90),
(6, 3, 6, 1, 49.80),
(7, 4, 7, 1, 39.90),
(8, 5, 8, 1, 69.90),
(9, 5, 9, 2, 44.90),
(10, 6, 10, 2, 49.90),
(11, 7, 11, 1, 45.00),
(12, 8, 12, 1, 59.90),
(13, 8, 13, 1, 59.90),
(14, 9, 14, 2, 54.90),
(15, 10, 15, 1, 69.90);

-- Despesas (DespesaID, Descricao, Valor, DataDespesa)
INSERT INTO Despesas VALUES
(1, 'Aluguel da loja', 2500.00, '2023-01-05'),
(2, 'Conta de luz', 450.75, '2023-01-10'),
(3, 'Conta de água', 120.40, '2023-01-12'),
(4, 'Internet e telefone', 299.99, '2023-01-15'),
(5, 'Compra de embalagens', 180.50, '2023-01-18'),
(6, 'Manutenção de equipamentos', 650.00, '2023-01-20'),
(7, 'Marketing digital', 900.00, '2023-01-25'),
(8, 'Salário de funcionários', 9800.00, '2023-01-30'),  
(9, 'Serviços de contabilidade', 850.00, '2023-02-02'),
(10, 'Reposição de material de escritório', 215.00, '2023-02-05');

-- LucroMensal (LucroID, MesAno, ReceitaTotal, CustoTotal, Lucro)
INSERT INTO LucroMensal VALUES
(1, '2023-01-01', 733.70, 14901.64, -14167.94),
(2, '2023-02-01', 69.90, 215.00, -145.10);




COMMIT TRANSACTION
