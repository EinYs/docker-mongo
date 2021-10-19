# dockerfile 
FROM mongo
WORKDIR /usr/src 
RUN mkdir configs 
WORKDIR /usr/src/configs 
COPY init/* init/ 
RUN chmod 600 init/replica.key
# 권한 설정. 6(유저) 0(그룹) 0(타인). 6 = 유저 본인에게만 읽기(4) 쓰기(2) 권한 허용
RUN chown 999:999 init/replica.key
# 파일 소유자를 바꿈.. 이게 있어야 정상 작동하는데 뭔 뜻인지 모르겠음
COPY tls/* tls/ 

# RUN chmod +x init/setup.sh 
# CMD ["sh", "/usr/src/configs/init/setup.sh"]