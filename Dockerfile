# Base image dùng ASP.NET Core 8 runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base

# Làm việc trong thư mục /app
WORKDIR /app

# Mở port 80 để Render truy cập
EXPOSE 80

# Copy toàn bộ nội dung từ thư mục Publish/ (viết đúng hoa thường như folder bạn đã tạo)
COPY Publish/ .

# Chạy ứng dụng, thay WebUniversity.dll nếu file .dll có tên khác
ENTRYPOINT ["dotnet", "WebUniversity.dll"]
