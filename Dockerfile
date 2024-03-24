FROM deanxv/coze-discord-proxy:latest

# 将环境变量 BOT_CONFIG 的值写入到 bot_config.json 文件中
RUN mkdir -p /app/coze-discord-proxy/data/config && \
    echo "$BOT_CONFIG" > /app/coze-discord-proxy/data/config/bot_config.json && \
    chmod -R 777 /app/coze-discord-proxy/data

# 设置工作目录
WORKDIR /app/coze-discord-proxy/data

# 暴露端口
EXPOSE 7077

# 启动命令
ENTRYPOINT ["/coze-discord-proxy"]
