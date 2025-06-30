#!/bin/bash

# 🚀 Script de Verificação Pré-Deploy
# Este script verifica se tudo está pronto para o deploy

echo "🔍 Verificando portfolio para deploy..."
echo "=================================="

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Contador de erros
ERRORS=0

# Função para verificar arquivos
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓${NC} $1 encontrado"
    else
        echo -e "${RED}✗${NC} $1 não encontrado"
        ((ERRORS++))
    fi
}

# Função para verificar diretórios
check_dir() {
    if [ -d "$1" ]; then
        echo -e "${GREEN}✓${NC} Diretório $1 encontrado"
    else
        echo -e "${RED}✗${NC} Diretório $1 não encontrado"
        ((ERRORS++))
    fi
}

echo -e "${BLUE}📁 Verificando estrutura de arquivos...${NC}"
echo "-----------------------------------"

# Arquivos principais
check_file "index.html"
check_file "manifest.json"
check_file "sw.js"
check_file "package.json"
check_file "tailwind.config.js"
check_file "netlify.toml"
check_file "README.md"
check_file "DEPLOY.md"

# Diretórios
check_dir "assets"
check_dir "fonts"
check_dir "src"

# Assets específicos
echo ""
echo -e "${BLUE}🎨 Verificando assets...${NC}"
echo "------------------------"
check_file "assets/tailwind.css"
check_file "assets/style.css"
check_dir "assets/icons"

# Verificar se CSS foi buildado
if [ -f "assets/tailwind.css" ]; then
    SIZE=$(stat -c%s "assets/tailwind.css")
    if [ $SIZE -gt 1000 ]; then
        echo -e "${GREEN}✓${NC} Tailwind CSS buildado (${SIZE} bytes)"
    else
        echo -e "${YELLOW}⚠${NC} Tailwind CSS muito pequeno, execute 'npm run build'"
        ((ERRORS++))
    fi
fi

# Verificar package.json
echo ""
echo -e "${BLUE}📦 Verificando package.json...${NC}"
echo "-----------------------------"
if [ -f "package.json" ]; then
    if grep -q "tailwindcss" package.json; then
        echo -e "${GREEN}✓${NC} Tailwind CSS configurado"
    else
        echo -e "${RED}✗${NC} Tailwind CSS não encontrado em package.json"
        ((ERRORS++))
    fi
    
    if grep -q "build" package.json; then
        echo -e "${GREEN}✓${NC} Script de build configurado"
    else
        echo -e "${RED}✗${NC} Script de build não encontrado"
        ((ERRORS++))
    fi
fi

# Verificar HTML
echo ""
echo -e "${BLUE}📄 Verificando index.html...${NC}"
echo "----------------------------"
if [ -f "index.html" ]; then
    # Meta tags essenciais
    if grep -q "viewport" index.html; then
        echo -e "${GREEN}✓${NC} Meta viewport configurado"
    else
        echo -e "${RED}✗${NC} Meta viewport não encontrado"
        ((ERRORS++))
    fi
    
    # Open Graph
    if grep -q "og:title" index.html; then
        echo -e "${GREEN}✓${NC} Open Graph configurado"
    else
        echo -e "${YELLOW}⚠${NC} Open Graph não encontrado"
    fi
    
    # PWA
    if grep -q "manifest.json" index.html; then
        echo -e "${GREEN}✓${NC} Manifest PWA linkado"
    else
        echo -e "${RED}✗${NC} Manifest PWA não linkado"
        ((ERRORS++))
    fi
    
    # Netlify Forms
    if grep -q "data-netlify" index.html; then
        echo -e "${GREEN}✓${NC} Formulário Netlify configurado"
    else
        echo -e "${RED}✗${NC} Formulário Netlify não configurado"
        ((ERRORS++))
    fi
    
    # Google Analytics
    if grep -q "gtag" index.html; then
        echo -e "${GREEN}✓${NC} Google Analytics encontrado"
        if grep -q "GA_MEASUREMENT_ID" index.html; then
            echo -e "${YELLOW}⚠${NC} Lembre-se de substituir GA_MEASUREMENT_ID pelo ID real"
        fi
    else
        echo -e "${YELLOW}⚠${NC} Google Analytics não encontrado"
    fi
fi

# Verificar fontes
echo ""
echo -e "${BLUE}🔤 Verificando fontes...${NC}"
echo "----------------------"
FONT_COUNT=$(find fonts/ -name "*.ttf" -o -name "*.otf" 2>/dev/null | wc -l)
if [ $FONT_COUNT -gt 0 ]; then
    echo -e "${GREEN}✓${NC} $FONT_COUNT fontes encontradas"
else
    echo -e "${YELLOW}⚠${NC} Nenhuma fonte encontrada"
fi

# Verificar ícones
echo ""
echo -e "${BLUE}🎯 Verificando ícones...${NC}"
echo "------------------------"
if [ -d "assets/icons" ]; then
    ICON_COUNT=$(find assets/icons/ -name "*.svg" -o -name "*.png" -o -name "*.webp" 2>/dev/null | wc -l)
    if [ $ICON_COUNT -gt 0 ]; then
        echo -e "${GREEN}✓${NC} $ICON_COUNT ícones encontrados"
    else
        echo -e "${YELLOW}⚠${NC} Nenhum ícone encontrado"
    fi
fi

# Verificar node_modules
echo ""
echo -e "${BLUE}📚 Verificando dependências...${NC}"
echo "-----------------------------"
if [ -d "node_modules" ]; then
    echo -e "${GREEN}✓${NC} node_modules presente"
    if [ -f "package-lock.json" ]; then
        echo -e "${GREEN}✓${NC} package-lock.json presente"
    fi
else
    echo -e "${YELLOW}⚠${NC} node_modules não encontrado - execute 'npm install'"
fi

# Resultado final
echo ""
echo "=================================="
if [ $ERRORS -eq 0 ]; then
    echo -e "${GREEN}🎉 SUCESSO! Portfolio pronto para deploy${NC}"
    echo ""
    echo -e "${BLUE}📋 Próximos passos:${NC}"
    echo "1. Execute 'npm run build' se ainda não executou"
    echo "2. Substitua GA_MEASUREMENT_ID pelo ID real do Google Analytics"
    echo "3. Faça commit e push para seu repositório"
    echo "4. Configure deploy no Netlify"
    echo "5. Teste o formulário de contato em produção"
    echo ""
    echo -e "${GREEN}🚀 Bom deploy!${NC}"
else
    echo -e "${RED}❌ $ERRORS erro(s) encontrado(s)${NC}"
    echo "Corrija os problemas antes do deploy"
fi

exit $ERRORS
