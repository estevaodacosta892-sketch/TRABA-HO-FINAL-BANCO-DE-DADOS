-- 1. Tabela FUNCIONARIO
CREATE TABLE funcionario (
  id_funcionario INT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  cargo VARCHAR(50) NOT NULL
);

-- 2. Tabela CLIENTE
CREATE TABLE cliente (
  id_cliente INT PRIMARY KEY,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  nome VARCHAR(120) NOT NULL,
  email VARCHAR(80) NOT NULL,
  rua VARCHAR(100) NOT NULL,
  numero INT NOT NULL,
  bairro VARCHAR(80) NOT NULL,
  cidade VARCHAR(60) NOT NULL,
  estado VARCHAR(2) NOT NULL,
  cep VARCHAR(8) NOT NULL,
  id_gerente INT NOT NULL REFERENCES funcionario(id_funcionario)
);

-- 3. Tabela CLIENTE_TELEFONE
CREATE TABLE cliente_telefone (
  id_cliente INT NOT NULL REFERENCES cliente(id_cliente) ON DELETE CASCADE,
  telefone VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_cliente, telefone)
);

-- 4. Tabela CONTA
CREATE TABLE conta (
  numero_conta INT PRIMARY KEY,
  tipo_conta VARCHAR(20) NOT NULL,
  data_abertura DATE NOT NULL,
  saldo_atual DECIMAL(15,2) NOT NULL DEFAULT 0.00
);

-- 5. Tabela CLIENTE_CONTA
CREATE TABLE cliente_conta (
  id_cliente INT NOT NULL REFERENCES cliente(id_cliente),
  numero_conta INT NOT NULL REFERENCES conta(numero_conta),
  PRIMARY KEY (id_cliente, numero_conta)
);

-- 6. Tabela CARTAO
CREATE TABLE cartao (
  numero_cartao VARCHAR(16) PRIMARY KEY,
  limite_total DECIMAL(10,2) NOT NULL,
  data_validade DATE NOT NULL,
  numero_conta INT NOT NULL UNIQUE REFERENCES conta(numero_conta)
);

-- 7. Tabela TRANSACAO
CREATE TABLE transacao (
  id_transacao INT PRIMARY KEY,
  valor DECIMAL(10,2) NOT NULL,
  data_hora timestamptz NOT NULL DEFAULT now(),
  numero_conta INT NOT NULL REFERENCES conta(numero_conta)
);