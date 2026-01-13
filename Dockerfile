# Node.jsの公式イメージをベースにする
FROM node:20-alpine

# アプリの作業ディレクトリを作成
WORKDIR /app

# 依存関係ファイルだけ先にコピーしてインストール
COPY src/package*.json ./
RUN npm install

# アプリのソースコードをコピー
COPY src/ .

# 開発サーバーを起動
CMD ["npm", "run", "dev"]