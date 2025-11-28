# Conversor de Markdown para HTML - Grupo 6

Este projeto é uma ferramenta de linha de comando (CLI) desenvolvida em **Ruby** que converte arquivos Markdown (`.md`) para HTML, aplicando estilização e tratamento de erros.

**Integrantes:**
- Lucas Gustavo
- Anthony Dhavid
- Germano Carlos

---

## 🛠 Tecnologias e Dependências

O projeto utiliza o gerenciador de dependências **Bundler** (Ruby).

- **[Kramdown](https://kramdown.gettalong.org/):** Motor de conversão de Markdown para HTML.
- **[TTY-Prompt](https://github.com/piotrmurach/tty-prompt):** Interface interativa para perguntas no terminal.
- **[Pastel](https://github.com/piotrmurach/pastel):** Estilização e cores para saída no terminal.

---

## 🚀 Como Executar (Docker)

A maneira mais fácil de executar a aplicação é utilizando a imagem Docker hospedada no GitHub Container Registry. Não é necessário ter Ruby instalado.

### Pré-requisitos
- Docker instalado.

### Passo a Passo

1. Crie um arquivo Markdown para teste (ex: `teste.md`) na sua pasta atual.
2. Execute o comando abaixo no terminal:

**Linux / Mac / PowerShell:**
```bash
docker run -it --rm -v "$(pwd):/app" ghcr.io/lucas-dev020/conversor-ruby:latest
