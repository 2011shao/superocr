# 使用 Python 的官方镜像
FROM python:3.11

# 设置工作目录
WORKDIR /app

# 复制当前目录的所有内容到工作目录
COPY . /app

# 安装 Python 依赖项
RUN pip install --no-cache-dir -r requirements.txt

# 指定容器启动时执行的命令
CMD ["python", "main.py"]
