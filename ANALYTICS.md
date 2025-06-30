# 📊 Configuração Google Analytics (GA4)

## 🆔 Obtendo o ID do Google Analytics

### 1. Criar Conta/Propriedade GA4

1. **Acesse** [analytics.google.com](https://analytics.google.com)
2. **Clique** em "Começar" ou "Criar conta"
3. **Configure** os detalhes:
   - Nome da conta: "Portfolio João Vancim"
   - Nome da propriedade: "Portfolio Pessoal"
   - Fuso horário: "Brasil (GMT-3)"
   - Moeda: "Real brasileiro (R$)"

### 2. Configurar Stream de Dados

1. **Selecione** "Web" como plataforma
2. **Digite** a URL do seu site (ex: https://joao-vancim.netlify.app)
3. **Nome do stream**: "Portfolio Website"
4. **Copie** o "Measurement ID" (formato: G-XXXXXXXXXX)

## 🔧 Implementação no Portfolio

### Substitua o Placeholder

No arquivo `index.html`, substitua `GA_MEASUREMENT_ID` pelo ID real:

```html
<!-- ANTES (linha ~920) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>

<!-- DEPOIS (exemplo com ID real) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-ABC123XYZ9"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-ABC123XYZ9');
</script>
```

### Script de Substituição Automática

```bash
# No terminal, substitua SEU_GA_ID pelo ID real
sed -i 's/GA_MEASUREMENT_ID/G-ABC123XYZ9/g' index.html
```

## 📈 Eventos Configurados

O portfolio já tracka automaticamente:

### 1. **Page View** (automático)
- Visualizações de página
- Tempo na página
- Taxa de rejeição

### 2. **Form Submission** 
```javascript
gtag('event', 'form_submit', {
  event_category: 'Contact',
  event_label: 'Portfolio Contact Form'
});
```

### 3. **Dark Mode Toggle**
```javascript
gtag('event', 'dark_mode_toggle', {
  event_category: 'UI',
  value: isDarkMode ? 1 : 0
});
```

### 4. **Scroll to Top**
```javascript
gtag('event', 'scroll_to_top', {
  event_category: 'Navigation'
});
```

### 5. **External Links**
```javascript
gtag('event', 'click', {
  event_category: 'External Link',
  event_label: href
});
```

## 🎯 Objetivos e Conversões

### Configurar Objetivos no GA4

1. **Acesse** Admin > Eventos
2. **Crie** eventos personalizados:
   - **Contact Form**: `form_submit`
   - **Dark Mode Usage**: `dark_mode_toggle`
   - **Engagement**: `scroll_to_top`

### Métricas Importantes

- **Taxa de conversão**: Formulários enviados / Visitantes
- **Tempo médio na página**: Engajamento do conteúdo
- **Taxa de rejeição**: Qualidade do tráfego
- **Dispositivos**: Mobile vs Desktop usage
- **Fontes de tráfego**: Organic, Direct, Social, etc.

## 🔍 Verificação e Teste

### 1. Tempo Real

1. **Acesse** Relatórios > Tempo real
2. **Visite** seu site em uma aba privada
3. **Verifique** se aparece na contagem

### 2. Debug com Extensions

- **Google Analytics Debugger** (Chrome Extension)
- **GA4 Tag Manager Inspector**

### 3. Console do Navegador

```javascript
// Verificar se GA4 está carregado
console.log(window.gtag);
console.log(window.dataLayer);

// Testar evento manual
gtag('event', 'test_event', {
  custom_parameter: 'test_value'
});
```

## 📊 Relatórios Personalizados

### Criar Dashboard

1. **Acesse** Explorations > Blank
2. **Adicione** métricas relevantes:
   - Sessions
   - Page views
   - Conversion events
   - User engagement

### Relatórios Úteis

- **Acquisition** → Como usuários chegam
- **Engagement** → Tempo e páginas vistas
- **Monetization** → Conversões (formulários)
- **Retention** → Usuários recorrentes

## 🚨 GDPR/LGPD Compliance

### Aviso de Cookies (Opcional)

Se necessário, adicione um banner de consentimento:

```html
<!-- Banner simples -->
<div id="cookie-banner" class="fixed bottom-0 left-0 right-0 bg-gray-800 text-white p-4 z-50">
  <div class="container mx-auto flex justify-between items-center">
    <p>Este site usa cookies para melhorar sua experiência.</p>
    <button onclick="acceptCookies()" class="bg-blue-600 px-4 py-2 rounded">
      Aceitar
    </button>
  </div>
</div>
```

### Configurar Consent Mode

```javascript
// Antes do gtag config
gtag('consent', 'default', {
  'analytics_storage': 'denied',
  'ad_storage': 'denied'
});

// Após consentimento
function acceptCookies() {
  gtag('consent', 'update', {
    'analytics_storage': 'granted'
  });
}
```

## 📝 Checklist Final

- [ ] GA4 propriedade criada
- [ ] Measurement ID copiado
- [ ] Placeholder substituído no HTML
- [ ] Site testado em tempo real
- [ ] Eventos funcionando
- [ ] Objetivos configurados
- [ ] Compliance LGPD considerado

---

**🎯 Meta**: Alcançar insights valiosos sobre visitantes e otimizar conversões!
