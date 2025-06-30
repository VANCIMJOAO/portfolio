# 🚀 Guia de Deploy - Netlify

## ✅ Pré-requisitos

Antes do deploy, certifique-se de que:

- [ ] Build do Tailwind CSS foi executado (`npm run build`)
- [ ] Todos os arquivos estão presentes (index.html, assets/, manifest.json, sw.js, etc.)
- [ ] Links e URLs estão corretos
- [ ] Google Analytics ID foi configurado

## 📝 Passos para Deploy no Netlify

### 1. Preparação dos Arquivos

```bash
# 1. Execute o build do Tailwind CSS
npm run build

# 2. Verifique se todos os arquivos estão presentes
ls -la
```

### 2. Deploy via Git (Recomendado)

```bash
# 1. Inicialize um repositório Git (se ainda não tiver)
git init

# 2. Adicione todos os arquivos
git add .

# 3. Faça o commit inicial
git commit -m "🚀 Initial portfolio deploy"

# 4. Adicione o repositório remoto (GitHub, GitLab, etc.)
git remote add origin https://github.com/SEU_USUARIO/portfolio.git

# 5. Faça o push
git push -u origin main
```

### 3. Configuração no Netlify

1. **Acesse** [netlify.com](https://netlify.com) e faça login
2. **Clique** em "New site from Git"
3. **Conecte** seu repositório (GitHub, GitLab, Bitbucket)
4. **Configure** as settings de build:
   - **Build command**: `npm run build`
   - **Publish directory**: `./` (raiz do projeto)
   - **Production branch**: `main`

### 4. Deploy Manual (Alternativo)

Se preferir deploy manual:

1. **Comprima** todos os arquivos em um ZIP
2. **Acesse** [netlify.com/drop](https://netlify.com/drop)
3. **Arraste** o arquivo ZIP para a área de drop

## ⚙️ Configurações Pós-Deploy

### 1. Formulário de Contato

- O formulário já está configurado com `data-netlify="true"`
- **Verifique** em Site Settings > Forms se o formulário aparece
- **Configure** notificações de email se necessário

### 2. Google Analytics

**Substitua** o placeholder pelo ID real:

```html
<!-- Em index.html, linha ~920 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=SEU_GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'SEU_GA_ID');
</script>
```

### 3. Domínio Personalizado (Opcional)

1. **Acesse** Site Settings > Domain Management
2. **Adicione** seu domínio personalizado
3. **Configure** o DNS conforme instruções

### 4. HTTPS e SSL

- O Netlify configura HTTPS automaticamente
- **Verifique** em Site Settings > Domain Management

## 🔍 Verificações Pós-Deploy

### ✅ Checklist de Validação

- [ ] **Site carrega** sem erros
- [ ] **Responsividade** funciona em dispositivos móveis
- [ ] **Formulário de contato** envia emails
- [ ] **Dark mode** toggle funciona
- [ ] **PWA** pode ser instalada
- [ ] **Google Analytics** está trackando
- [ ] **Performance** 95+ no Lighthouse
- [ ] **SEO** otimizado (meta tags, Open Graph)
- [ ] **Acessibilidade** sem problemas

### 🛠️ Ferramentas de Teste

1. **Lighthouse** (DevTools)
   ```
   - Performance: 95+
   - Accessibility: 95+
   - Best Practices: 95+
   - SEO: 95+
   ```

2. **PageSpeed Insights**
   - [pagespeed.web.dev](https://pagespeed.web.dev)

3. **Wave Accessibility**
   - [wave.webaim.org](https://wave.webaim.org)

4. **Responsividade**
   - Chrome DevTools (diferentes dispositivos)

## 🚨 Troubleshooting

### Problemas Comuns

**1. Build falha no Netlify**
```bash
# Solução: Execute localmente primeiro
npm install
npm run build
```

**2. CSS não carrega**
- Verifique se `assets/tailwind.css` existe
- Execute `npm run build` novamente

**3. Formulário não funciona**
- Verifique `data-netlify="true"` no form
- Confirme que está usando method="POST"

**4. PWA não instala**
- Verifique se `manifest.json` está acessível
- Confirme se `sw.js` está registrado

## 📊 Monitoramento

### Google Analytics Events

O portfolio tracka automaticamente:
- Page views
- Form submissions
- Dark mode toggles
- Scroll to top clicks
- External link clicks

### Netlify Analytics

- **Ative** Netlify Analytics para métricas detalhadas
- **Monitore** bandwidth usage e visitors

## 🔄 Atualizações Futuras

Para atualizar o site:

```bash
# 1. Faça suas mudanças
# 2. Execute o build
npm run build

# 3. Commit e push
git add .
git commit -m "✨ Update: descrição da mudança"
git push

# 4. Deploy automático no Netlify
```

## 📞 Suporte

Se encontrar problemas:

1. **Netlify Support**: [support.netlify.com](https://support.netlify.com)
2. **Logs do Deploy**: Site Overview > Deploys
3. **Community Forum**: [community.netlify.com](https://community.netlify.com)

---

**🎉 Parabéns!** Seu portfolio está pronto para impressionar recrutadores e clientes!
