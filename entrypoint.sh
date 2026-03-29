#!/bin/sh   

echo "⏳ Esperando a la base de datos..."

# Esperar hasta que postgres esté disponible
until nc -z $DB_HOST $DB_PORT; do
  sleep 2
done

echo "👤 Creando usuario admin..."
npm run user:create -- --email "$ADMIN_EMAIL" --password "$ADMIN_PASSWORD" --name "$ADMIN_NAME" || true

echo "🚀 Iniciando aplicación..."
npm run start