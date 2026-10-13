FROM nginx:1.27-alpine
RUN apk add --no-cache curl \
 && curl --fail --location --retry 4 --retry-all-errors \
    --output /usr/share/nginx/html/BlueVPN-2.6.24-debug.apk \
    https://github.com/rdkjvj1-spec/BlueVPN-Downloads/releases/download/v2.6.24/BlueVPN-2.6.24-debug.apk \
 && printf '%s\n' '<!doctype html><html lang="fa" dir="rtl"><meta charset="utf-8"><meta name="viewport" content="width=device-width"><title>BlueVPN 2.6.24</title><style>body{font-family:sans-serif;background:#eaf8ff;text-align:center;padding:48px;color:#17344d}a{display:inline-block;background:#0873e8;color:white;padding:16px 24px;border-radius:14px;text-decoration:none;font-weight:700}</style><h1>BlueVPN 2.6.24</h1><p>نسخه تأییدشده اندروید</p><a href="/BlueVPN-2.6.24-debug.apk">دانلود مستقیم APK</a></html>' > /usr/share/nginx/html/index.html
EXPOSE 80
