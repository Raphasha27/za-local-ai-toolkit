Write-Host "=== South African Local AI Toolkit ===" -ForegroundColor Green
Write-Host "This script installs Ollama and pulls a default model." -ForegroundColor Cyan
Write-Host ""

# Check if Ollama is installed
if (-not (Get-Command ollama -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Ollama..." -ForegroundColor Yellow
    $installer = "$env:TEMP\ollama-installer.exe"
    Invoke-WebRequest -Uri "https://ollama.com/download/OllamaSetup.exe" -OutFile $installer
    Start-Process -FilePath $installer -Wait
    Remove-Item $installer
    # Refresh PATH
    $env:Path = [Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [Environment]::GetEnvironmentVariable("Path", "User")
}

$model = "llama3.2:3b"
Write-Host "Pulling recommended model ($model)..." -ForegroundColor Yellow
ollama pull $model

Write-Host "Setup complete!" -ForegroundColor Green
Write-Host "Run 'ollama run $model' to start chatting." -ForegroundColor Cyan
