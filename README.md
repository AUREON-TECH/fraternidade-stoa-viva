# FRATERNIDADE STOA VIVA

Portal da fraternidade, identidade preto e dourado. Lema: **Homens melhores. Legados maiores.**

## Estado real do produto
- Landing page responsiva em React + Vite.
- Simulador de Fundo Fraterno: **sem pagamentos reais**.
- Painel de membros/encontros: **protótipo visual sem dados reais**.
- Cadastro e login: **não implementados**. Inputs desabilitados de propósito.
- Banco existente no AUREON BASE (Neon PostgreSQL), schema isolado `stoa_viva`.
- Nenhuma conta fundadora ativada e nenhum membro aprovado pelo site.
- Publicação via GitHub Pages: workflow presente, mas ativação em Settings > Pages > Source: GitHub Actions e execução bem-sucedida ainda devem ser verificadas.

## Desenvolvimento local
```bash
npm install
npm run dev
npm run build
```

## Publicação GitHub Pages
1. Repositório > Settings > Pages > Build and deployment > Source: **GitHub Actions**.
2. Acompanhar Actions > Publicar site no GitHub Pages.
3. URL esperada: https://raphaelbuenocaptacao-creator.github.io/fraternidade-stoa-viva/
4. **Não presumir publicação** antes de confirmar execução verde e abrir a URL.

## Segurança
GitHub Pages hospeda apenas frontend estático: **nunca** incluir credenciais do banco, secrets ou chaves administrativas no React. O backend para cadastro, autenticação e aprovação deve validar permissões no servidor. Somente o fundador pode aprovar membros; cadastro não concede acesso automaticamente. E-mail designado do fundador: stoaviva.oficial@gmail.com, sujeito a verificação segura e MFA.

O repositório GitHub foi observado como **público**. Não incluir dados pessoais ou segredos.

Documentos: `docs/CONTA-FUNDADOR.md`, `docs/CADASTRO-E-APROVACAO.md`, `docs/PLANO-SEGURANCA.md`.
