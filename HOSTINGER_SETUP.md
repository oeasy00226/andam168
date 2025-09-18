# 🎯 Guia Rápido: Deploy no Hostinger - Andam168 Casino

## 📋 Checklist de Deploy

### ✅ Antes de Começar
- [ ] Conta Hostinger ativa
- [ ] Domínio configurado
- [ ] Projeto com build de produção
- [ ] Credenciais de banco de dados

---

## 🚀 PASSO A PASSO COMPLETO

### 1️⃣ **CRIAR REPOSITÓRIO NO GITHUB**

```bash
# No seu terminal local:
git remote add origin https://github.com/SEU_USUARIO/andam168-casino.git
git branch -M main
git push -u origin main
```

**📝 Instruções:**
1. Vá para [GitHub.com](https://github.com)
2. Clique em "New Repository"
3. Nome: `andam168-casino`
4. Marque como "Private" (recomendado)
5. Clique "Create Repository"
6. Execute os comandos acima no terminal

---

### 2️⃣ **CONFIGURAR HOSTINGER**

#### 2.1 Criar Banco de Dados
1. **hPanel** → **Bancos de Dados** → **Gerenciar**
2. **Criar Novo Banco**:
   - Nome: `u123456789_andam168`
   - Usuário: `u123456789_admin`
   - Senha: `[GERE UMA SENHA FORTE]`
3. **Anotar credenciais** para usar no .env

#### 2.2 Configurar Domínio
1. **hPanel** → **Domínios**
2. Verificar se SSL está ativo ✅
3. Configurar redirecionamento HTTPS

---

### 3️⃣ **UPLOAD DOS ARQUIVOS**

#### Opção A: Via File Manager (Mais Fácil)
1. **hPanel** → **Arquivos** → **Gerenciador de Arquivos**
2. Navegue até `public_html`
3. **Deletar arquivos padrão** (index.html, etc.)
4. **Upload do projeto**:
   - Compacte seu projeto em ZIP
   - Faça upload do ZIP
   - Extraia na pasta `public_html`

#### Opção B: Via Git (Avançado)
```bash
# SSH no Hostinger
cd public_html
git clone https://github.com/SEU_USUARIO/andam168-casino.git .
```

---

### 4️⃣ **CONFIGURAR ESTRUTURA DE ARQUIVOS**

**⚠️ IMPORTANTE**: Mover arquivos da pasta `public` para raiz:

```
public_html/
├── index.php (mover de public/)
├── .htaccess (mover de public/)
├── css/ (mover de public/)
├── js/ (mover de public/)
├── build/ (mover de public/)
├── app/
├── bootstrap/
├── config/
├── database/
├── resources/
├── routes/
├── storage/
├── vendor/
└── .env (criar novo)
```

---

### 5️⃣ **CONFIGURAR .ENV**

1. **Copiar** `.env.example` para `.env`
2. **Editar** com suas configurações:

```env
APP_NAME="Andam168 Casino"
APP_ENV=production
APP_KEY=base64:[GERAR_NOVA_CHAVE]
APP_DEBUG=false
APP_URL=https://seudominio.com

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=u123456789_andam168
DB_USERNAME=u123456789_admin
DB_PASSWORD=[SUA_SENHA_DO_BANCO]

# Email (Hostinger SMTP)
MAIL_MAILER=smtp
MAIL_HOST=smtp.hostinger.com
MAIL_PORT=587
MAIL_USERNAME=noreply@seudominio.com
MAIL_PASSWORD=[SENHA_DO_EMAIL]
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=noreply@seudominio.com
```

---

### 6️⃣ **EXECUTAR COMANDOS DE INSTALAÇÃO**

#### Via SSH (Se disponível):
```bash
# 1. Instalar dependências
composer install --optimize-autoloader --no-dev

# 2. Gerar chave
php artisan key:generate

# 3. Executar migrações
php artisan migrate --force

# 4. Executar seeders
php artisan db:seed --force

# 5. Link do storage
php artisan storage:link

# 6. Cache de produção
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

#### Sem SSH - Scripts PHP:

**Criar arquivo `install.php` temporário:**
```php
<?php
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);

echo "🔑 Gerando chave...\n";
$kernel->call('key:generate', ['--force' => true]);

echo "🗄️ Executando migrações...\n";
$kernel->call('migrate', ['--force' => true]);

echo "🌱 Executando seeders...\n";
$kernel->call('db:seed', ['--force' => true]);

echo "🔗 Criando link do storage...\n";
$kernel->call('storage:link');

echo "⚡ Otimizando cache...\n";
$kernel->call('config:cache');
$kernel->call('route:cache');
$kernel->call('view:cache');

echo "✅ Instalação concluída!";
?>
```

**Execute:** `https://seudominio.com/install.php`
**⚠️ DELETAR** o arquivo após uso!

---

### 7️⃣ **CONFIGURAR PERMISSÕES**

Via File Manager:
1. **storage/** → Permissões: `775`
2. **bootstrap/cache/** → Permissões: `775`
3. **.env** → Permissões: `644`

Via SSH:
```bash
chmod -R 775 storage bootstrap/cache
chmod 644 .env
```

---

### 8️⃣ **VERIFICAR INSTALAÇÃO**

#### ✅ Testes Básicos:
1. **Site Principal**: `https://seudominio.com`
2. **Painel Admin**: `https://seudominio.com/admin`
3. **Login Admin**:
   - Email: `admin@andam168.com`
   - Senha: `admin123456`

#### 🔧 Se houver erros:
1. **Verificar logs**: `storage/logs/laravel.log`
2. **Testar conexão DB**: Via phpMyAdmin
3. **Verificar permissões**: storage e cache

---

### 9️⃣ **CONFIGURAÇÕES DE SEGURANÇA**

#### 🔒 Imediato:
1. **Alterar senha admin** no painel
2. **Deletar arquivos temporários** (install.php)
3. **Configurar backup automático**

#### 🛡️ .htaccess de Segurança:
```apache
# Adicionar ao .htaccess
<Files .env>
    Order allow,deny
    Deny from all
</Files>

<Files composer.json>
    Order allow,deny
    Deny from all
</Files>

# Bloquear acesso a pastas sensíveis
RedirectMatch 403 ^/storage/.*$
RedirectMatch 403 ^/vendor/.*$
```

---

## 🆘 SOLUÇÃO DE PROBLEMAS

### ❌ Erro 500
```bash
# Verificar logs
tail -f storage/logs/laravel.log

# Limpar cache
php artisan cache:clear
php artisan config:clear
```

### ❌ Erro de Banco
1. Verificar credenciais no `.env`
2. Testar conexão via phpMyAdmin
3. Verificar se banco existe

### ❌ Erro de Permissões
```bash
# Resetar permissões
find . -type f -exec chmod 644 {} \;
find . -type d -exec chmod 755 {} \;
chmod -R 775 storage bootstrap/cache
```

---

## 📞 SUPORTE RÁPIDO

### 🔍 Logs Importantes:
- **Laravel**: `storage/logs/laravel.log`
- **Apache**: hPanel → Logs de Erro
- **PHP**: hPanel → Logs PHP

### 📧 Contatos:
- **Hostinger**: Chat 24/7 no hPanel
- **Projeto**: Issues no GitHub

---

## ✅ CHECKLIST FINAL

- [ ] Site carrega sem erros
- [ ] Admin panel acessível
- [ ] Login funcionando
- [ ] Banco de dados conectado
- [ ] Emails sendo enviados
- [ ] SSL ativo
- [ ] Backup configurado
- [ ] Senhas alteradas
- [ ] Arquivos temporários removidos

---

**🎉 PARABÉNS! Seu cassino está no ar!**

**🔗 Próximos passos:**
1. Configurar jogos e provedores
2. Testar sistema de pagamentos
3. Configurar marketing e SEO
4. Monitorar performance

**💡 Dica**: Mantenha sempre backups atualizados!