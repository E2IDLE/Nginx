FROM nginx:alpine

# 프론트 정적 파일 복사
COPY build/front/ /usr/share/nginx/html/

# 클라이언트 바이너리 복사
COPY build/client/main     /usr/share/nginx/client/DirectP2P_Agent_Linux_x64
COPY build/client/main.exe /usr/share/nginx/client/DirectP2P_Agent_Win_x64.exe

# nginx 설정 복사
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8088