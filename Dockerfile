FROM alpine:latest

RUN apk update 
RUN apk add --no-cache nginx

# ポート設定
EXPOSE 80

RUN mkdir -p /run/nginx

# フォアグラウンドでnginx実行
CMD nginx -g "daemon off;"