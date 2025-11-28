# Carrega as bibliotecas do Bundler
"#!/usr/bin/env ruby"
require 'bundler/setup'
require 'kramdown'
require 'tty-prompt'
require 'pastel'

# Inicializa as ferramentas de UI
prompt = TTY::Prompt.new
pastel = Pastel.new

# Título
puts pastel.bold.blue("=== Conversor Grupo 6: Markdown para HTML ===")

# 1. Pergunta o nome do arquivo (Interatividade)
# Se rodar sem argumentos, ele pergunta. Se passar argumento, ele usa.
caminho_arquivo = ARGV[0] || prompt.ask("Qual o nome do arquivo Markdown (ex: notas.md)?", default: "exemplo.md")

if File.exist?(caminho_arquivo)
  puts pastel.yellow("Lendo arquivo...")
  
  # Lê o conteúdo
  conteudo_md = File.read(caminho_arquivo)
  
  # 2. Converte (Dependência kramdown)
  html_output = Kramdown::Document.new(conteudo_md).to_html
  
  # Cria nome de saída
  nome_saida = caminho_arquivo.sub('.md', '.html')
  
  # 3. Salva
  File.write(nome_saida, html_output)
  
  puts pastel.green.bold("✔ Sucesso! Arquivo gerado: #{nome_saida}")
else
  puts pastel.red.bold("❌ Erro Crítico: O arquivo solicitado não foi localizado.")
  exit(1)
end