# 使用合適的 Node.js 版本
FROM node:22-alpine

# 設置工作目錄
WORKDIR /app
RUN apk add git

# 複製 package.json 和 package-lock.json
COPY package*.json ./

# 安裝依賴
RUN npm install

# 全局安裝 Angular CLI
RUN npm install -g @angular/cli

# 複製專案文件
COPY . .

# 暴露端口
EXPOSE 4200

# 啟動應用
CMD ["ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]