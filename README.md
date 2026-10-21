# 🎴 e-cards — Pokémon TCG Database & Prompt Engineering

> Projeto desenvolvido como parte do bootcamp/desafio da **DIO (Digital Innovation One)**, com foco no uso do **GitHub Copilot / Inteligência Artificial** para auxiliar na modelagem, construção e consulta de bancos de dados **PostgreSQL**.

---

## 📌 Sobre o Projeto

O **e-cards** é um sistema de modelagem relacional para gerenciar cartas e coleções (sets) do Pokémon TCG.

O objetivo principal deste repositório é demonstrar como utilizar a **Engenharia de Prompt** e assistentes de código AI (como GitHub Copilot e ChatGPT) para acelerar a criação de tabelas (DDL), inserção de dados (DML) e construção de consultas SQL avançadas.

---

## 🗂️ Estrutura do Repositório

```text
e-cards/
├── assets/                  # Imagens e recursos visuais (ex: Gengar EX)
├── db_scripts/
│   ├── seeds/               # Scripts SQL para população inicial do banco
│   │   └── 001_seeds_cards.sql
│   └── tables/              # Scripts SQL para criação das tabelas e índices
│       └── 001_create_card_table.sql
├── prompts/                 # Documentação dos prompts utilizados com IA
│   ├── 01-criacao-tabelas.md
│   ├── 02-geracao-seeds.md
│   └── 03-consultas-sql.md
└── README.md                # Documentação principal do projeto
```
