# 🚀 Guia de Deploy no Hostinger - Andam168 Casino

Este guia detalha o processo completo de deploy do projeto Andam168 Casino no Hostinger.

## 📋 Pré-requisitos

- Conta ativa no Hostinger com plano de hospedagem
- Acesso ao painel de controle (hPanel)
- Projeto preparado com build de produção
- Banco de dados MySQL disponível

## 🔧 Passo 1: Preparação do Ambiente Hostinger

### 1.1 Criar Banco de Dados

1. Acesse o hPanel do Hostinger
2. Vá em **Bancos de Dados** → **Gerenciar**
3. Clique em **Criar Banco de Dados**
4. Defina:
   - Nome do banco: `andam168_casino`
   - Usuário: `andam168_user`
   - Senha: (gere uma senha forte)
5. Anote as credenciais para uso posterior

### 1.2 Configurar Domínio

1. No hPanel, vá em **Domínios**
2. Configure seu domínio principal
3. Certifique-se de que o SSL está ativo
4. Configure redirecionamento HTTPS se necessário

## 📁 Passo 2: Upload dos Arquivos

### 2.1 Via File Manager (Recomendado)

1. Acesse **Arquivos** → **Gerenciador de Arquivos**
2. Navegue até `public_html`
3. Faça upload de todos os arquivos do projeto
4. **Importante**: O conteúdo da pasta `public` deve ficar na raiz do `public_html`

### 2.2 Estrutura de Arquivos no Servidor

```
public_html/
├── app/
├── bootstrap/
├── config/
├── database/
├── resources/
├── routes/
├── storage/
├── vendor/
├── .env (copiar de .env.example)
├── .htaccess
├── artisan
├── composer.json
├── index.php (da pasta public)
└── outros arquivos...
```

### 2.3 Configuração de Permissões

Execute via SSH ou configure no File Manager:

```bash
# Permissões para storage
chmod -R 775 storage/
chmod -R 775 bootstrap/cache/

# Permissões para arquivos específicos
chmod 644 .env
chmod 644 .htaccess
chmod 755 artisan
```

## ⚙️ Passo 3: Configuração do Ambiente

### 3.1 Configurar .env

1. Copie `.env.example` para `.env`
2. Edite o arquivo `.env` com as configurações:

```env
APP_NAME="Andam168 Casino"
APP_ENV=production
APP_KEY=base64:GERAR_NOVA_CHAVE
APP_DEBUG=false
APP_URL=https://seudominio.com

LOG_CHANNEL=stack
LOG_LEVEL=error

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=andam168_casino
DB_USERNAME=andam168_user
DB_PASSWORD=SUA_SENHA_DO_BANCO

# Configurações de cache para produção
CACHE_DRIVER=file
SESSION_DRIVER=file
QUEUE_CONNECTION=sync

# Configurações de email (configure conforme seu provedor)
MAIL_MAILER=smtp
MAIL_HOST=smtp.hostinger.com
MAIL_PORT=587
MAIL_USERNAME=seu_email@seudominio.com
MAIL_PASSWORD=sua_senha_email
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=noreply@seudominio.com
MAIL_FROM_NAME="Andam168 Casino"

# Configurações de segurança
SESSION_SECURE_COOKIE=true
SESSION_HTTP_ONLY=true
SESSION_SAME_SITE=lax
```

### 3.2 Gerar Chave da Aplicação

Se tiver acesso SSH:
```bash
php artisan key:generate
```

Se não tiver SSH, use este script PHP temporário (`generate_key.php`):
```php
<?php
require_once 'vendor/autoload.php';

$key = 'base64:' . base64_encode(random_bytes(32));
echo "APP_KEY=" . $key;

// Atualize manualmente no .env
?>
```

## 🗄️ Passo 4: Configuração do Banco de Dados

### 4.1 Executar Migrações

Via SSH:
```bash
php artisan migrate --force
```

Via script PHP (`migrate.php`):
```php
<?php
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);

$kernel->call('migrate', ['--force' => true]);
echo "Migrações executadas com sucesso!";
?>
```

### 4.2 Executar Seeders

Via SSH:
```bash
php artisan db:seed --force
```

Via script PHP (`seed.php`):
```php
<?php
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);

$kernel->call('db:seed', ['--force' => true]);
echo "Seeders executados com sucesso!";
?>
```

## 🔗 Passo 5: Configurações Finais

### 5.1 Link Simbólico para Storage

Via SSH:
```bash
php artisan storage:link
```

Via File Manager:
1. Crie uma pasta `storage` em `public_html`
2. Copie o conteúdo de `storage/app/public` para `public_html/storage`

### 5.2 Otimização de Cache

Via SSH:
```bash
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

Via scripts PHP individuais se necessário.

### 5.3 Configurar .htaccess

Certifique-se de que o `.htaccess` na raiz contém:

```apache
<IfModule mod_rewrite.c>
    <IfModule mod_negotiation.c>
        Options -MultiViews -Indexes
    </IfModule>

    RewriteEngine On

    # Handle Authorization Header
    RewriteCond %{HTTP:Authorization} .
    RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]

    # Redirect Trailing Slashes If Not A Folder...
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_URI} (.+)/$
    RewriteRule ^ %1 [L,R=301]

    # Send Requests To Front Controller...
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^ index.php [L]
</IfModule>

# Security Headers
<IfModule mod_headers.c>
    Header always set X-Content-Type-Options nosniff
    Header always set X-Frame-Options DENY
    Header always set X-XSS-Protection "1; mode=block"
    Header always set Strict-Transport-Security "max-age=63072000; includeSubDomains; preload"
    Header always set Referrer-Policy "strict-origin-when-cross-origin"
</IfModule>

# Disable server signature
ServerSignature Off

# Hide PHP version
<IfModule mod_headers.c>
    Header unset X-Powered-By
</IfModule>
```

## 🧪 Passo 6: Testes e Verificação

### 6.1 Verificações Básicas

1. **Acesso ao Site**: `https://seudominio.com`
2. **Painel Admin**: `https://seudominio.com/admin`
3. **Login Admin**:
   - Email: `admin@andam168.com`
   - Senha: `admin123456`

### 6.2 Testes Funcionais

- [ ] Registro de usuário
- [ ] Login/logout
- [ ] Navegação pelos jogos
- [ ] Sistema de pagamentos
- [ ] Painel administrativo
- [ ] Envio de emails

### 6.3 Verificação de Performance

1. **GTmetrix**: Teste de velocidade
2. **Google PageSpeed**: Análise de performance
3. **SSL Labs**: Verificação de segurança SSL

## 🔒 Passo 7: Segurança e Manutenção

### 7.1 Configurações de Segurança

1. **Alterar senhas padrão**:
   - Admin do sistema
   - Banco de dados
   - FTP/SSH

2. **Configurar backup automático**:
   - Banco de dados diário
   - Arquivos semanais

3. **Monitoramento**:
   - Logs de erro
   - Tentativas de login
   - Performance

### 7.2 Manutenção Regular

1. **Backup semanal**:
   ```bash
   mysqldump -u usuario -p banco > backup_$(date +%Y%m%d).sql
   ```

2. **Limpeza de logs**:
   ```bash
   php artisan log:clear
   ```

3. **Atualização de dependências**:
   ```bash
   composer update --no-dev
   ```

## 🆘 Solução de Problemas Comuns

### Erro 500 - Internal Server Error

1. Verifique permissões das pastas
2. Confira configurações do `.env`
3. Verifique logs em `storage/logs/laravel.log`

### Erro de Banco de Dados

1. Confirme credenciais no `.env`
2. Teste conexão via phpMyAdmin
3. Verifique se as migrações foram executadas

### Problemas de Cache

1. Limpe todos os caches:
   ```bash
   php artisan cache:clear
   php artisan config:clear
   php artisan route:clear
   php artisan view:clear
   ```

### Erro de Permissões

1. Configure permissões corretas:
   ```bash
   find . -type f -exec chmod 644 {} \;
   find . -type d -exec chmod 755 {} \;
   chmod -R 775 storage bootstrap/cache
   ```

## 📞 Suporte

Para problemas específicos do deploy:

1. **Logs do Hostinger**: Verifique no hPanel
2. **Logs do Laravel**: `storage/logs/laravel.log`
3. **Suporte Hostinger**: Chat ou ticket
4. **Documentação Laravel**: [laravel.com/docs](https://laravel.com/docs)

---

**✅ Deploy concluído com sucesso!**

Seu cassino Andam168 está agora rodando em produção no Hostinger.