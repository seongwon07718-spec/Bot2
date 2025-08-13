# Python 3.11 기반 이미지 사용
FROM python:3.11-slim

# 작업 디렉토리 생성
WORKDIR /app

# 라이브러리 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 봇 코드 복사
COPY . .

# 실행 명령
CMD ["python", "main.py"]
