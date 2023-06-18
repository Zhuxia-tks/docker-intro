# docker-intro

## Dockerのインストール
公式サイトからインストール
[https://www.docker.com/](https://www.docker.com/)

##　Hello world

1. リポジトリのクローン
    
    ```bash
    git　clone　{このレポジトリのURL}
    cd {クローン先}
    ```
    
2. イメージのビルド
    
    ```bash
    docker build -t　hello .
    ```
    
3. コンテナの起動
    
    ```bash
    docker run --rm -v ./src:/app/src -p 8080:4567 -d hello
    ```
    
4. ブラウザで`http://localhost:8080/`にアクセス
    
    Hello worldと表示されたらOK
    