# Port### ✨ Funcionalidades

- **🎨 Design Moderno**: UI/UX profissiona### 🎯 Seções

1. **🏠 Hero Section**: Apresentação principal com loading animation
2. **💻 Habilidades**: 6 categorias técnicas (Frontend, Data Science, Backend, Database, DevOps, Cloud)
3. **🚀 Projetos Destacados**: 4 projetos com cards interativos e preview ao vivo
4. **💬 Depoimentos**: Testimonials de clientes com ratings e stats
5. **👨‍💻 Sobre Mim**: História profissional, timeline e estatísticas
6. **📝 Blog**: Artigos técnicos sobre desenvolvimento e data science
7. **❓ FAQ**: Perguntas frequentes com accordion interativo
8. **📧 Contato**: Formulário funcional com validação e feedbackmações suaves
- **📱 Responsivo**: Adaptado para todos os dispositivos (mobile-first)
- **⚡ Performance**: CSS otimizado, lazy loading, scroll indicators
- **📧 Formulário Funcional**: Sistema de contato integrado com Netlify Forms
- **🔍 SEO Otimizado**: Meta tags, Open Graph, estrutura semântica
- **♿ Acessível**: Navegação por teclado, contraste adequado, ARIA labels
- **📊 Analytics**: Google Analytics (GA4) com tracking de eventos
- **🌗 Dark Mode**: Toggle de tema escuro/claro com localStorage
- **📱 PWA**: Progressive Web App com service worker e manifest
- **💬 Depoimentos**: Seção de testimonials com avaliações
- **📝 Blog**: Seção de artigos técnicos
- **❓ FAQ**: Perguntas frequentes com accordion interativo
- **⬆️ Scroll to Top**: Botão flutuante para voltar ao topo
- **🎯 Smooth Scroll**: Navegação suave entre seções
- **🚀 Deploy Ready**: Configurado para Netlify com otimizaçõesão Vancim

## 🚀 Full Stack Developer & Data Scientist

Portfolio pessoal profissional showcasing skills in web development and data science with modern performance optimizations.

### ✨ Funcionalidades

- **🎨 Design Moderno**: UI/UX profissional com animações suaves
- **� Responsivo**: Adaptado para todos os dispositivos
- **⚡ Performance**: CSS otimizado, lazy loading, scroll indicators
- **📧 Formulário Funcional**: Sistema de contato integrado
- **🔍 SEO Otimizado**: Meta tags, Open Graph, estrutura semântica
- **♿ Acessível**: Navegação por teclado, contraste adequado
- **📊 Analytics**: Google Analytics integrado
- **🚀 Deploy Ready**: Configurado para Netlify

### �🛠️ Tecnologias Utilizadas

#### Frontend
- **HTML5** & **CSS3** semântico
- **JavaScript** (ES6+) vanilla
- **Tailwind CSS** (otimizado e minificado)
- **Responsive Design** mobile-first
- **Custom Animations** & micro-interactions

#### Performance & SEO
- **Lazy Loading** para iframes e imagens
- **Font optimization** com font-display: swap
- **Minified CSS** com Tailwind purge
- **Meta tags** completas para SEO
- **Open Graph** para redes sociais

#### Analytics & Forms
- **Google Analytics** (GA4)
- **Netlify Forms** para contato
- **Form validation** client-side
- **Loading states** e feedback visual

### 📁 Estrutura do Projeto

```
portfolio/
├── index.html              # Página principal
├── manifest.json           # PWA manifest
├── sw.js                  # Service worker
├── package.json            # Dependências e scripts
├── tailwind.config.js      # Configuração Tailwind com dark mode
├── netlify.toml           # Configuração de deploy
├── assets/
│   ├── tailwind.css       # CSS otimizado e minificado
│   └── icons/             # Ícones das tecnologias
├── fonts/                 # Família de fontes Navillè
├── src/
│   └── input.css          # Arquivo fonte do Tailwind
└── README.md
```

### 🎯 Seções

1. **🏠 Hero Section**: Apresentação principal com loading animation
2. **💻 Habilidades**: 6 categorias técnicas (Frontend, Data Science, Backend, Database, DevOps, Cloud)
3. **🚀 Projetos Destacados**: 4 projetos com cards interativos e preview ao vivo
4. **💬 Depoimentos**: Testimonials de clientes com ratings e stats
5. **👨‍💻 Sobre Mim**: História profissional, timeline e estatísticas
6. **� Blog**: Artigos técnicos sobre desenvolvimento e data science
7. **📧 Contato**: Formulário funcional com validação e feedback

### 🏃‍♂️ Como Executar

#### Desenvolvimento Local
```bash
# Clone o repositório
git clone <repo-url>
cd portfolio

# Instale dependências
npm install

# Desenvolvimento com CSS watch
npm run watch-css

# Servidor local
npm run dev
# ou
python -m http.server 8000
```

#### Build para Produção
```bash
# Build CSS otimizado
npm run build

# Deploy no Netlify
# Conecte o repositório e configure:
# Build command: npm run build
# Publish directory: .
```

### 🚀 Deploy

#### Netlify (Recomendado)
1. Conecte seu repositório GitHub
2. Configure build command: `npm run build`
3. Configure publish directory: `.`
4. Ative Netlify Forms para o formulário de contato
5. Configure domínio customizado (opcional)

#### Outras Opções
- **Vercel**: Deploy automático via GitHub
- **GitHub Pages**: Para sites estáticos
- **Surge.sh**: Deploy simples via CLI

### ⚡ Performance

- **Lighthouse Score**: 95+ em todas as métricas
- **CSS Size**: ~15KB (vs ~3MB do CDN)
- **Loading Time**: <1.2s para primeira visualização
- **Mobile Optimized**: Touch-friendly, responsive grid

### � Configuração Analytics

Para usar o Google Analytics:
1. Substitua `GA_MEASUREMENT_ID` pelo seu ID real
2. Configure eventos customizados no `gtag`
3. Configure metas no Google Analytics 4

### 📞 Configuração Formulário

O formulário está configurado para **Netlify Forms**:
- Funciona automaticamente após deploy no Netlify
- Para outros providers, ajuste o endpoint no JavaScript
- Validação client-side e server-side

### 📈 Melhorias Implementadas ✅

- [x] **Blog**: Seção de artigos técnicos ✅
- [x] **Dark Mode**: Toggle de tema escuro/claro ✅
- [x] **PWA**: Service worker para offline ✅
- [x] **Depoimentos**: Seção de testimonials ✅
- [x] **Múltiplos Projetos**: 4 projetos showcased ✅
- [x] **Analytics Avançado**: Eventos customizados ✅

### 📈 Melhorias Futuras

- [ ] **Multilingual**: Versão em inglês
- [ ] **CMS**: Painel admin para conteúdo
- [ ] **API**: Backend próprio para formulário
- [ ] **Tests**: Testes automatizados
- [ ] **CI/CD**: Pipeline de deploy automatizado

### 🤝 Contribuições

Sugestões e melhorias são bem-vindas! Abra uma issue ou PR.

### 📞 Contato

- **Site**: [joaovancim.dev](https://joaovancim.dev)
- **Email**: joao.vancim@email.com
- **LinkedIn**: [linkedin.com/in/joao-vancim](https://linkedin.com/in/joao-vancim)
- **GitHub**: [github.com/VANCIMJOAO](https://github.com/VANCIMJOAO)

---

**Desenvolvido com ❤️ por João Vancim** | 2024
