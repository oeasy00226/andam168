# Andam168 Casino - Laravel Gaming Platform

Um sistema completo de cassino online desenvolvido em Laravel com Filament Admin Panel.

## 🚀 Recursos Principais

- **Sistema de Usuários**: Registro, login, perfis e sistema VIP
- **Jogos de Cassino**: Integração com múltiplos provedores de jogos
- **Sistema de Pagamentos**: PIX, cartões e outros gateways
- **Programa de Afiliados**: Sistema completo de comissões
- **Painel Administrativo**: Interface moderna com Filament
- **Sistema de Missões**: Gamificação para engajamento
- **Apostas Esportivas**: Integração com APIs de esportes
- **Notificações em Tempo Real**: WebSockets com Pusher

## 📋 Requisitos do Sistema

- **PHP**: 8.1 ou superior
- **Composer**: 2.0 ou superior
- **Node.js**: 16.0 ou superior
- **MySQL**: 5.7 ou superior / MariaDB 10.3+
- **Extensões PHP**: curl, intl, libxml, simplexml, zip
- **Servidor Web**: Apache/Nginx com mod_rewrite

## 🛠️ Instalação no Hostinger

### 1. Preparação dos Arquivos

1. Faça upload de todos os arquivos para o diretório `public_html`
2. Certifique-se de que o arquivo `.htaccess` está presente
3. Configure as permissões das pastas:
   ```bash
   chmod 755 storage/
   chmod 755 bootstrap/cache/
   chmod -R 775 storage/
   chmod -R 775 bootstrap/cache/
   ```

### 2. Configuração do Banco de Dados

1. Crie um banco de dados MySQL no painel do Hostinger
2. Copie o arquivo `.env.example` para `.env`
3. Configure as variáveis do banco de dados:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=localhost
   DB_PORT=3306
   DB_DATABASE=seu_banco_de_dados
   DB_USERNAME=seu_usuario
   DB_PASSWORD=sua_senha
   ```

### 3. Configuração das Variáveis de Ambiente

Edite o arquivo `.env` com suas configurações:

```env
APP_NAME="Andam168 Casino"
APP_ENV=production
APP_KEY=base64:SUA_CHAVE_AQUI
APP_DEBUG=false
APP_URL=https://seudominio.com

# Configure outros serviços conforme necessário
PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
```

### 4. Instalação via Terminal SSH

Se você tem acesso SSH no Hostinger:

```bash
# 1. Instalar dependências do Composer
composer install --optimize-autoloader --no-dev

# 2. Gerar chave da aplicação
php artisan key:generate

# 3. Executar migrações
php artisan migrate

# 4. Executar seeders (dados iniciais)
php artisan db:seed

# 5. Criar link simbólico para storage
php artisan storage:link

# 6. Limpar e otimizar cache
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

### 5. Configuração sem SSH

Se não tiver acesso SSH, use o File Manager do Hostinger:

1. Faça upload da pasta `vendor` completa
2. Execute os comandos via cron job ou script PHP personalizado
3. Configure manualmente o link simbólico para storage

## 🔧 Configurações Importantes

### Configuração do Apache (.htaccess)

O arquivo `.htaccess` já está configurado, mas verifique se contém:

```apache
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteRule ^(.*)$ public/$1 [L]
</IfModule>
```

### Configuração de Segurança

1. **Permissões de Arquivo**:
   - Arquivos: 644
   - Diretórios: 755
   - Storage e cache: 775

2. **Variáveis Sensíveis**:
   - Nunca commite o arquivo `.env`
   - Use senhas fortes para banco de dados
   - Configure HTTPS obrigatório

### Configuração de Performance

1. **OPcache** (adicione ao .env):
   ```env
   OPCACHE_ENABLE=1
   OPCACHE_MEMORY_CONSUMPTION=128
   OPCACHE_MAX_ACCELERATED_FILES=4000
   ```

2. **Cache de Configuração**:
   ```bash
   php artisan config:cache
   php artisan route:cache
   php artisan view:cache
   ```

## 🎮 Configuração dos Jogos

### Provedores de Jogos

Configure as chaves dos provedores no arquivo `.env`:

```env
GAMES_KEY_FIVER=sua_chave_fiver
GAMES_KEY_VIBRA=sua_chave_vibra
GAMES_KEY_WORLDSLOT=sua_chave_worldslot
GAMES_KEY_GAMES2=sua_chave_games2
```

### Gateways de Pagamento

Configure os gateways no painel administrativo ou via `.env`:

```env
STRIPE_KEY=pk_live_...
STRIPE_SECRET=sk_live_...
```

## 👤 Acesso Administrativo

Após a instalação, acesse:
- **URL**: `https://seudominio.com/admin`
- **Email**: `admin@andam168.com`
- **Senha**: `admin123456`

**⚠️ IMPORTANTE**: Altere a senha padrão imediatamente após o primeiro login!

## 🔄 Manutenção

### Backup Regular

1. **Banco de Dados**:
   ```bash
   mysqldump -u usuario -p banco_dados > backup.sql
   ```

2. **Arquivos**:
   - Backup da pasta `storage/app`
   - Backup do arquivo `.env`

### Atualizações

1. Faça backup completo
2. Atualize os arquivos
3. Execute migrações: `php artisan migrate`
4. Limpe cache: `php artisan cache:clear`

## 📞 Suporte

Para suporte técnico ou dúvidas sobre a instalação:

- **Email**: suporte@andam168.com
- **Documentação**: [Link para documentação]
- **Issues**: [Link para GitHub Issues]

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

**Desenvolvido com ❤️ para a melhor experiência de cassino online**