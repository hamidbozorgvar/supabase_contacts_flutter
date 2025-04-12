# مرحله build
FROM cirrusci/flutter:stable AS build

WORKDIR /app

# فقط pubspec ها برای کش بهتر
COPY pubspec.* ./

RUN flutter pub get

# حالا کل پروژه
COPY . .

# Build خروجی وب
RUN flutter build web

# مرحله سرو نهایی
FROM nginx:alpine

# کپی خروجی web به پوشه Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]