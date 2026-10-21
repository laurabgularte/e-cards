-- Inserindo Coleções de Exemplo
INSERT INTO colecoes (codigo, nome, serie, total_cartas, data_lancamento)
VALUES 
    ('xy4', 'Phantom Forces', 'XY', 123, '2014-11-05'),
    ('base1', 'Base Set', 'Base', 102, '1999-01-09')
ON CONFLICT (codigo) DO NOTHING;

-- Inserindo Cartas de Exemplo
INSERT INTO cartas (colecao_id, card_id_api, nome, supertype, subtypes, hp, tipos, raridade, artista, imagem_url)
VALUES 
    (
        1, 
        'xy4-34', 
        'Gengar EX', 
        'Pokémon', 
        ARRAY['Basic', 'EX'], 
        '170', 
        ARRAY['Psychic'], 
        'Rare Holo EX', 
        'Eske Yoshinob', 
        'assets/GengarEXPokemonCard.webp'
    ),
    (
        2, 
        'base1-4', 
        'Charizard', 
        'Pokémon', 
        ARRAY['Stage 2'], 
        '120', 
        ARRAY['Fire'], 
        'Rare Holo', 
        'Mitsuhiro Arita', 
        NULL
    )
ON CONFLICT (card_id_api) DO NOTHING;