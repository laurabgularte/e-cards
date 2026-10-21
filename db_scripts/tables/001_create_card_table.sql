-- ==========================================================
-- 1. Tabela de Coleções (Sets do Pokémon TCG)
-- ==========================================================
CREATE TABLE IF NOT EXISTS colecoes (
    id SERIAL PRIMARY KEY,
    codigo VARCHAR(50) UNIQUE NOT NULL,     -- ex: 'base1', 'sv1'
    nome VARCHAR(255) NOT NULL,             -- ex: 'Base Set', 'Scarlet & Violet'
    serie VARCHAR(100),                     -- ex: 'Base', 'Scarlet & Violet'
    total_cartas INT,                       -- total de cartas na coleção
    data_lancamento DATE,                   -- data de lançamento oficial
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================================
-- 2. Tabela de Cartas
-- ==========================================================
CREATE TABLE IF NOT EXISTS cartas (
    id SERIAL PRIMARY KEY,
    colecao_id INT NOT NULL,                -- Relacionamento com colecoes(id)
    card_id_api VARCHAR(100) UNIQUE,        -- ex: 'base1-4'
    nome VARCHAR(255) NOT NULL,             -- ex: 'Gengar EX', 'Charizard'
    supertype VARCHAR(50) NOT NULL,         -- 'Pokémon', 'Trainer', 'Energy'
    subtypes VARCHAR(100)[],                -- ARRAY['Stage 2', 'EX']
    hp VARCHAR(10),                         -- ex: '180'
    tipos VARCHAR(50)[],                    -- ARRAY['Psychic'], ARRAY['Darkness']
    raridade VARCHAR(100),                  -- ex: 'Rare Holo EX'
    artista VARCHAR(255),                   -- Nome do ilustrador
    imagem_url TEXT,                        -- Caminho/Link da imagem (ex: 'assets/GengarEXPokemonCard.webp')
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_colecao
        FOREIGN KEY (colecao_id) 
        REFERENCES colecoes(id) 
        ON DELETE CASCADE
);

-- ==========================================================
-- 3. Índices para Otimização
-- ==========================================================
CREATE INDEX IF NOT EXISTS idx_cartas_colecao_id ON cartas(colecao_id);
CREATE INDEX IF NOT EXISTS idx_cartas_nome ON cartas(nome);
CREATE INDEX IF NOT EXISTS idx_cartas_supertype ON cartas(supertype);
CREATE INDEX IF NOT EXISTS idx_colecoes_codigo ON colecoes(codigo);