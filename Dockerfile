FROM ruby:3.2-alpine

WORKDIR /app

# MUDANÇA: Copia APENAS o Gemfile (o arquivo que você tem)
COPY Gemfile ./

# O Docker vai instalar e criar o .lock lá dentro automaticamente
RUN bundle install

# Copia o resto do código (seu app.rb)
COPY . .
LABEL maintainer="Grupo 6"
ENTRYPOINT ["ruby", "app.rb"]
