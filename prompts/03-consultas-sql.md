# Prompt: Consultas SQL e Análises

## Contexto

Desafios de consultas propostos ou buscas comuns no banco.

### 1. Buscar todas as cartas de uma coleção específica

**Prompt:**

> "Crie uma consulta SQL em Postgres para listar o nome da carta, HP e raridade de todas as cartas pertencentes à coleção 'Phantom Forces'."

**Query Gerada:**

```sql
SELECT c.nome, c.hp, c.raridade, col.nome AS colecao
FROM cartas c
JOIN colecoes col ON c.colecao_id = col.id
WHERE col.codigo = 'xy4';
```
