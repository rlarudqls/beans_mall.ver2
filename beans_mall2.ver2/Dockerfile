# 베이스 이미지 설정 (Tomcat 8.5와 OpenJDK 11을 사용)
FROM tomcat:8.5-jdk11-openjdk-slim

# WAR 파일을 Tomcat의 webapps 디렉토리로 복사하고 이름을 ROOT.war로 변경
COPY target/ROOT.war /usr/local/tomcat/webapps/ROOT.war

# 포트 설정 (기본 HTTP 포트 8080 사용)
EXPOSE 8080

# Tomcat 서버 시작
CMD ["catalina.sh", "run"]
