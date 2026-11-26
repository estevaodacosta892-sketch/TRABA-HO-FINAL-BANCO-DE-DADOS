-- 1. Inserindo 10 registros em FUNCIONARIO
INSERT INTO funcionario (id_funcionario, nome, cargo) VALUES
(1, 'Carlos Silva', 'Gerente Geral'),
(2, 'Ana Souza', 'Gerente de Contas'),
(3, 'Marcos Oliveira', 'Gerente de Contas'),
(4, 'Juliana Lima', 'Gerente Personalite'),
(5, 'Roberto Santos', 'Analista Financeiro'),
(6, 'Fernanda Costa', 'Gerente de Contas'),
(7, 'Lucas Pereira', 'Atendente'),
(8, 'Mariana Almeida', 'Gerente de Negocios'),
(9, 'Ricardo Gomes', 'Supervisor'),
(10, 'Patricia Rocha', 'Gerente de Contas'),

-- 2. Inserindo 10 registros em CLIENTE
INSERT INTO cliente (id_cliente, cpf, nome, email, rua, numero, bairro, cidade, estado, cep, id_gerente) VALUES
(1, '11122233344', 'Joao Pedro Alves', 'joao.alves@email.com', 'Rua das Flores', 120, 'Centro', 'Franca', 'SP', '14400001', 2),
(2, '22233344455', 'Maria Clara Dias', 'maria.dias@email.com', 'Av. Presidente Vargas', 450, 'Cidade Nova', 'Franca', 'SP', '14401100', 2),
(3, '33344455566', 'Pedro Henrique Melo', 'pedro.melo@email.com', 'Rua Major Claudiano', 890, 'Centro', 'Franca', 'SP', '14400690', 3),
(4, '44455566677', 'Camila Fernandes', 'camila.f@email.com', 'Rua Voluntarios da Franca', 1500, 'Estacao', 'Franca', 'SP', '14405000', 4),
(5, '55566677788', 'Bruno Carvalho', 'bruno.c@email.com', 'Av. Alonso y Alonso', 2100, 'Sao Jose', 'Franca', 'SP', '14401400', 3),
(6, '66677788899', 'Larissa Martins', 'larissa.m@email.com', 'Rua Ouvidor Freire', 340, 'Centro', 'Franca', 'SP', '14400630', 6),
(7, '77788899900', 'Thiago Ribeiro', 'thiago.r@email.com', 'Av. Brasil', 780, 'Vila Aparecida', 'Ribeirao Preto', 'SP', '14015040', 4),
(8, '88899900011', 'Amanda Barbosa', 'amanda.b@email.com', 'Rua Sao Paulo', 55, 'Campos Eliseos', 'Ribeirao Preto', 'SP', '14080010', 8),
(9, '99900011122', 'Gabriel Moreira', 'gabriel.m@email.com', 'Av. Paulista', 1000, 'Bela Vista', 'Sao Paulo', 'SP', '01310100', 10),
(10, '00011122233', 'Beatriz Nogueira', 'beatriz.n@email.com', 'Rua Augusta', 250, 'Consolacao', 'Sao Paulo', 'SP', '01305000', 10);

-- 3. Inserindo 10 registros em CLIENTE_TELEFONE
INSERT INTO cliente_telefone (id_cliente, telefone) VALUES
(1, '16991112233'),
(1, '1637221100'),
(2, '16992223344'),
(3, '16993334455'),
(4, '16994445566'),
(5, '16995556677'),
(6, '16996667788'),
(7, '16981112233'),
(8, '16982223344'),
(9, '11991112233');

-- 4. Inserindo 10 registros em CONTA
INSERT INTO conta (numero_conta, tipo_conta, data_abertura, saldo_atual) VALUES
(1001, 'Corrente', '2023-01-15', 2500.50),
(1002, 'Poupanca', '2023-02-20', 10450.00),
(1003, 'Corrente', '2023-03-10', 890.75),
(1004, 'Salario', '2023-05-05', 3200.00),
(1005, 'Corrente', '2023-06-18', 15600.90),
(1006, 'Poupanca', '2023-08-22', 450.00),
(1007, 'Corrente', '2024-01-10', 7820.40),
(1008, 'Corrente', '2024-03-14', 120.00),
(1009, 'Poupanca', '2024-07-01', 25000.00),
(1010, 'Corrente', '2025-01-09', 4150.25);

-- 5. Inserindo 10 registros em CLIENTE_CONTA (Relacionamento N:N)
INSERT INTO cliente_conta (id_cliente, numero_conta) VALUES
(1, 1001),
(2, 1001), -- Conta 1001 conjunta entre cliente 1 e 2
(2, 1002),
(3, 1003),
(4, 1004),
(5, 1005),
(6, 1006),
(7, 1007),
(8, 1008),
(9, 1009);

-- 6. Inserindo 10 registros em CARTAO (Relacionamento 1:1 com CONTA)
INSERT INTO cartao (numero_cartao, limite_total, data_validade, numero_conta) VALUES
('4532015112830366', 5000.00, '2028-05-01', 1001),
('4532015112830374', 2000.00, '2028-06-01', 1002),
('5425233430109903', 1500.00, '2027-11-01', 1003),
('5425233430109911', 3500.00, '2029-01-01', 1004),
('4916382910482719', 15000.00, '2029-08-01', 1005),
('4916382910482727', 1000.00, '2027-09-01', 1006),
('5105105105105100', 8000.00, '2028-12-01', 1007),
('5105105105105118', 800.00, '2027-04-01', 1008),
('4024007109283746', 20000.00, '2030-02-01', 1009),
('4024007109283754', 4500.00, '2029-07-01', 1010);

-- 7. Inserindo 10 registros em TRANSACAO
INSERT INTO transacao (id_transacao, valor, data_hora, numero_conta) VALUES
(1, 250.00, '2026-10-01 10:15:00-03', 1001),
(2, -89.90, '2026-10-02 14:30:00-03', 1001),
(3, 1500.00, '2026-10-05 09:00:00-03', 1002),
(4, -45.50, '2026-10-10 18:20:00-03', 1003),
(5, 3200.00, '2026-10-15 08:05:00-03', 1004),
(6, -1200.00, '2026-10-20 16:45:00-03', 1005),
(7, 300.00, '2026-11-01 11:10:00-03', 1006),
(8, -520.40, '2026-11-05 20:00:00-03', 1007),
(9, -60.00, '2026-11-10 12:30:00-03', 1008),
(10, 5000.00, '2026-11-15 15:50:00-03', 1009);

-- 1. Tabela transação --
DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO transacao (id_transacao, valor, data_hora, id_conta)
        VALUES (
            i,
            ROUND((25.50 + ((i % 50) * 32.40))::numeric, 2),
            TIMESTAMP '2026-01-01 08:00:00' + (i * INTERVAL '3 hours'),
            i
        );
    END LOOP;
END $$;

-- 2. Tabela cartão --
DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO cartao (numero_cartao, limite_total, data_validade, id_conta)
        VALUES (
            '4532' || LPAD(i::text, 12, '0'),
            ROUND((1000.00 + ((i % 20) * 750.00))::numeric, 2),
            DATE '2028-01-01' + ((i % 60) * 30),
            i
        );
    END LOOP;
END $$;

-- 3. Tabela cliente_conta --
DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO cliente_conta (id_cliente, id_conta)
        VALUES (
            i,
            i
        );
    END LOOP;
END $$;

-- 4. Tabela conta --
DO $$
DECLARE
    i INT;
    tipos TEXT[] := ARRAY['Corrente', 'Poupanca', 'Salario', 'Investimento'];
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO conta (id_conta, tipo_conta, data_abertura, saldo_atual)
        VALUES (
            i,
            tipos[1 + (i % 4)],
            DATE '2020-01-01' + (i * 4),
            ROUND((150.00 + (i * 47.35))::numeric, 2)
        );
    END LOOP;
END $$;

-- 5. Tabela cliente_telefone --
DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO cliente_telefone (id_cliente, telefone)
        VALUES (
            i,
            '(16) 99' || LPAD(i::text, 3, '0') || '-' || LPAD((1000 + i)::text, 4, '0')
        );
    END LOOP;
END $$;

-- 6. Tabela cliente --
DO $$
DECLARE
    i INT;
    nomes TEXT[] := ARRAY['Lucas', 'Mariana', 'Pedro', 'Camila', 'Rafael', 'Juliana', 'Bruno', 'Fernanda', 'Gabriel', 'Larissa'];
    sobrenomes TEXT[] := ARRAY['Silva', 'Santos', 'Oliveira', 'Souza', 'Pereira', 'Costa', 'Rodrigues', 'Almeida', 'Nascimento', 'Lima'];
    ruas TEXT[] := ARRAY['Rua das Flores', 'Avenida Brasil', 'Rua Major Nicacio', 'Avenida Presidente Vargas', 'Rua Voluntarios da Franca', 'Rua General Carneiro', 'Avenida Alonso y Alonso', 'Rua Tiradentes', 'Rua Campos Salles', 'Avenida Doutor Ismael Alonso'];
    bairros TEXT[] := ARRAY['Centro', 'Estacao', 'Cidade Nova', 'Sao Jose', 'Jardim Lima', 'Parque Universitario', 'Vila Exposicao', 'Jardim Francano', 'Santo Agostinho', 'Residencial Baldassari'];
    cidades TEXT[] := ARRAY['Franca', 'Ribeirao Preto', 'Sao Paulo', 'Campinas', 'Batatais', 'Sertaozinho', 'Araraquara', 'Sao Carlos', 'Uberaba', 'Passos'];
    estados TEXT[] := ARRAY['SP', 'SP', 'SP', 'SP', 'SP', 'SP', 'SP', 'SP', 'MG', 'MG'];
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO cliente (id_cliente, cpf, nome, email, rua, numero, bairro, cidade, estado, cep, id_gerente)
        VALUES (
            i,
            LPAD((10000000000 + i)::text, 11, '0'),
            nomes[1 + (i % 10)] || ' ' || sobrenomes[1 + ((i / 10) % 10)],
            'cliente' || i || '@email.com',
            ruas[1 + (i % 10)],
            100 + (i % 900),
            bairros[1 + ((i / 10) % 10)],
            cidades[1 + (i % 10)],
            estados[1 + (i % 10)],
            LPAD((14400000 + i)::text, 8, '0'),
            1 + (i % 500)
        );
    END LOOP;
END $$;

-- 7. Tabela funcionario --
DO $$
DECLARE
    i INT;
    nomes TEXT[] := ARRAY['Gabriel', 'Camila', 'Rafael', 'Beatriz', 'Thiago', 'Larissa', 'Felipe', 'Amanda', 'Rodrigo', 'Bruna'];
    sobrenomes TEXT[] := ARRAY['Martins', 'Ferreira', 'Alves', 'Ribeiro', 'Carvalho', 'Mendes', 'Barbosa', 'Castro', 'Rocha', 'Dias'];
    cargos TEXT[] := ARRAY['Gerente de Contas', 'Analista Financeiro', 'Atendente', 'Gerente Personalite', 'Supervisor', 'Gerente de Negocios', 'Gerente Geral'];
BEGIN
    FOR i IN 11..500 LOOP
        INSERT INTO funcionario (id_funcionario, nome, cargo)
        VALUES (
            i,
            nomes[1 + (i % 10)] || ' ' || sobrenomes[1 + ((i / 10) % 10)],
            cargos[1 + (i % 7)]
        );
    END LOOP;
END $$;