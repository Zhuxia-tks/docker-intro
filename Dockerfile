#元イメージの指定
FROM ubuntu:20.04

#作業ディレクトリの指定
WORKDIR /app

#インストール ruby, ruby-bundler,　ruby-dev
RUN apt update
RUN apt install -y ruby ruby-bundler ruby-dev

#ホストからGemfileのコピー
COPY Gemfile .

#rubyライブラリのインストール
RUN bundle install

#実行コマンド
CMD ["ruby", "./src/app.rb", "-o", "0.0.0.0"]
