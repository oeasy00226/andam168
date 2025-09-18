<?php
/**
 * Andam168 Casino - Installation Script for Hostinger
 * 
 * This script helps install the Laravel application on Hostinger
 * when SSH access is not available.
 * 
 * IMPORTANT: Delete this file after successful installation!
 */

// Set time limit for long operations
set_time_limit(300);

// Display errors for debugging
ini_set('display_errors', 1);
error_reporting(E_ALL);

echo "<h1>🎰 Andam168 Casino - Installation Script</h1>";
echo "<div style='font-family: monospace; background: #f5f5f5; padding: 20px; margin: 10px 0;'>";

try {
    // Check if Laravel is properly installed
    if (!file_exists('vendor/autoload.php')) {
        throw new Exception("❌ Composer dependencies not found. Please run 'composer install' first.");
    }

    if (!file_exists('.env')) {
        throw new Exception("❌ .env file not found. Please copy .env.example to .env and configure it.");
    }

    echo "✅ Checking Laravel installation...<br>";
    
    // Bootstrap Laravel
    require_once 'vendor/autoload.php';
    $app = require_once 'bootstrap/app.php';
    $kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);

    echo "✅ Laravel bootstrapped successfully<br><br>";

    // Step 1: Generate application key
    echo "🔑 <strong>Step 1: Generating application key...</strong><br>";
    try {
        $kernel->call('key:generate', ['--force' => true]);
        echo "✅ Application key generated<br><br>";
    } catch (Exception $e) {
        echo "⚠️ Key generation skipped (may already exist)<br><br>";
    }

    // Step 2: Test database connection
    echo "🗄️ <strong>Step 2: Testing database connection...</strong><br>";
    try {
        $pdo = new PDO(
            'mysql:host=' . env('DB_HOST') . ';dbname=' . env('DB_DATABASE'),
            env('DB_USERNAME'),
            env('DB_PASSWORD')
        );
        echo "✅ Database connection successful<br><br>";
    } catch (Exception $e) {
        throw new Exception("❌ Database connection failed: " . $e->getMessage());
    }

    // Step 3: Run migrations
    echo "🏗️ <strong>Step 3: Running database migrations...</strong><br>";
    try {
        $kernel->call('migrate', ['--force' => true]);
        echo "✅ Migrations completed<br><br>";
    } catch (Exception $e) {
        echo "⚠️ Migration warning: " . $e->getMessage() . "<br><br>";
    }

    // Step 4: Run seeders
    echo "🌱 <strong>Step 4: Running database seeders...</strong><br>";
    try {
        $kernel->call('db:seed', ['--force' => true]);
        echo "✅ Seeders completed<br><br>";
    } catch (Exception $e) {
        echo "⚠️ Seeder warning: " . $e->getMessage() . "<br><br>";
    }

    // Step 5: Create storage link
    echo "🔗 <strong>Step 5: Creating storage link...</strong><br>";
    try {
        $kernel->call('storage:link');
        echo "✅ Storage link created<br><br>";
    } catch (Exception $e) {
        echo "⚠️ Storage link warning: " . $e->getMessage() . "<br><br>";
    }

    // Step 6: Optimize for production
    echo "⚡ <strong>Step 6: Optimizing for production...</strong><br>";
    try {
        $kernel->call('config:cache');
        echo "✅ Configuration cached<br>";
        
        $kernel->call('route:cache');
        echo "✅ Routes cached<br>";
        
        $kernel->call('view:cache');
        echo "✅ Views cached<br><br>";
    } catch (Exception $e) {
        echo "⚠️ Optimization warning: " . $e->getMessage() . "<br><br>";
    }

    // Step 7: Check file permissions
    echo "📁 <strong>Step 7: Checking file permissions...</strong><br>";
    
    $directories = ['storage', 'bootstrap/cache'];
    foreach ($directories as $dir) {
        if (is_writable($dir)) {
            echo "✅ {$dir} is writable<br>";
        } else {
            echo "⚠️ {$dir} may need write permissions (775)<br>";
        }
    }
    echo "<br>";

    // Final success message
    echo "<div style='background: #d4edda; color: #155724; padding: 15px; border: 1px solid #c3e6cb; border-radius: 5px; margin: 20px 0;'>";
    echo "<h2>🎉 Installation Completed Successfully!</h2>";
    echo "<p><strong>Next Steps:</strong></p>";
    echo "<ol>";
    echo "<li>🗑️ <strong>DELETE THIS FILE (install.php) IMMEDIATELY</strong></li>";
    echo "<li>🔐 Visit <a href='/admin'>/admin</a> and login with:</li>";
    echo "<ul>";
    echo "<li>Email: <code>admin@andam168.com</code></li>";
    echo "<li>Password: <code>admin123456</code></li>";
    echo "</ul>";
    echo "<li>🔒 Change the admin password immediately</li>";
    echo "<li>🧪 Test all functionality</li>";
    echo "<li>🚀 Your casino is ready!</li>";
    echo "</ol>";
    echo "</div>";

    // Security warning
    echo "<div style='background: #f8d7da; color: #721c24; padding: 15px; border: 1px solid #f5c6cb; border-radius: 5px; margin: 20px 0;'>";
    echo "<h3>⚠️ SECURITY WARNING</h3>";
    echo "<p><strong>DELETE THIS FILE NOW!</strong> This installation script contains sensitive operations and should not remain on your server.</p>";
    echo "<p>You can delete it via File Manager or by visiting: <a href='?delete=true' style='color: #721c24;'><strong>DELETE install.php</strong></a></p>";
    echo "</div>";

} catch (Exception $e) {
    echo "<div style='background: #f8d7da; color: #721c24; padding: 15px; border: 1px solid #f5c6cb; border-radius: 5px; margin: 20px 0;'>";
    echo "<h2>❌ Installation Failed</h2>";
    echo "<p><strong>Error:</strong> " . $e->getMessage() . "</p>";
    echo "<p><strong>Please check:</strong></p>";
    echo "<ul>";
    echo "<li>Database credentials in .env file</li>";
    echo "<li>File permissions (storage and bootstrap/cache need 775)</li>";
    echo "<li>PHP version (requires 8.1+)</li>";
    echo "<li>Required PHP extensions</li>";
    echo "</ul>";
    echo "</div>";
}

// Self-delete option
if (isset($_GET['delete']) && $_GET['delete'] === 'true') {
    if (unlink(__FILE__)) {
        echo "<div style='background: #d4edda; color: #155724; padding: 15px; border: 1px solid #c3e6cb; border-radius: 5px; margin: 20px 0;'>";
        echo "<h2>✅ Installation file deleted successfully!</h2>";
        echo "<p>Your installation is now secure. <a href='/'>Visit your site</a></p>";
        echo "</div>";
        exit;
    } else {
        echo "<div style='background: #fff3cd; color: #856404; padding: 15px; border: 1px solid #ffeaa7; border-radius: 5px; margin: 20px 0;'>";
        echo "<h3>⚠️ Could not auto-delete</h3>";
        echo "<p>Please manually delete the install.php file via File Manager.</p>";
        echo "</div>";
    }
}

echo "</div>";

// System information
echo "<h2>📊 System Information</h2>";
echo "<div style='font-family: monospace; background: #f8f9fa; padding: 15px; margin: 10px 0; border-left: 4px solid #007bff;'>";
echo "<strong>PHP Version:</strong> " . PHP_VERSION . "<br>";
echo "<strong>Laravel Version:</strong> " . (class_exists('Illuminate\Foundation\Application') ? app()->version() : 'Unknown') . "<br>";
echo "<strong>Server:</strong> " . $_SERVER['SERVER_SOFTWARE'] . "<br>";
echo "<strong>Document Root:</strong> " . $_SERVER['DOCUMENT_ROOT'] . "<br>";
echo "<strong>Current Directory:</strong> " . getcwd() . "<br>";
echo "<strong>Memory Limit:</strong> " . ini_get('memory_limit') . "<br>";
echo "<strong>Max Execution Time:</strong> " . ini_get('max_execution_time') . "s<br>";
echo "</div>";

?>

<style>
body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background: #f8f9fa;
}
h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 30px;
}
h2 {
    color: #34495e;
    border-bottom: 2px solid #3498db;
    padding-bottom: 10px;
}
code {
    background: #e9ecef;
    padding: 2px 6px;
    border-radius: 3px;
    font-family: 'Courier New', monospace;
}
a {
    color: #3498db;
    text-decoration: none;
}
a:hover {
    text-decoration: underline;
}
</style>