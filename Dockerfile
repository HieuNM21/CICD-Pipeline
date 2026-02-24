# 1. Chọn Base Image (Nền tảng) từ WSO2
FROM wso2/wso2mi:4.2.0

# 2. Copy file CAR (Code) vào thư mục deploy của Container
COPY target/*.car /home/wso2carbon/wso2mi-4.2.0/repository/deployment/server/carbonapps/

# 3. Copy file Config (Cấu hình)
COPY deployment/deployment.toml /home/wso2carbon/wso2mi-4.2.0/conf/deployment.toml

# 4. Mở port cho bên ngoài gọi vào
EXPOSE 8290 8253