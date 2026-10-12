# STOA VIVA — Implementação segura do AUREON BASE

## Estado atual (12/10/2026)
- Neon identificado: projeto `winter-frog-20390936`; schema `stoa_viva`.
- Tabelas criadas: `members`, `invitations`, `financial_campaigns`, `financial_pledges`, `financial_audit`.
- Interface de simulação financeira no frontend, **sem valores reais**.
- Login provisório Supabase **desativado** para evitar coletar credenciais sem backend.
- Nenhum membro provisionado; nenhum convite enviado; nenhuma operação financeira ativada.

## Princípios de autorização
1. Frontend nunca se conecta ao Neon diretamente.
2. API executa todas as consultas autenticadas, verificando sessão válida e `stoa_viva.members.status='approved'`.
3. Apenas `role='founder'` pode aprovar novos membros e campanhas.
4. Conselho (`role='support'`) não ganha automaticamente poder de aprovação.
5. Dados financeiros sensíveis só aparecem para o titular e para o fundador estritamente conforme finalidade e consentimento.
6. Use credenciais de banco com privilégios mínimos, TLS e variáveis de ambiente apenas no servidor.
7. Tokens de convite aleatórios, expiráveis, de uso único e armazenados somente como hash.
8. Senhas não devem ser implementadas manualmente; integrar provedor de autenticação confiável, com cookies seguros e proteção CSRF.
9. Auditar aprovações, mudanças de status e acesso administrativo, sem registrar senhas/tokens.
10. Rate limit, validação de entrada e testes de acesso horizontal e vertical antes de liberar o site.

## Próximos passos de execução
1. Definir provedor de identidade e criar endpoint de sessão.
2. Implementar autorização e aprovação exclusiva do fundador no backend.
3. Completar esquema de encontros, presenças e auditoria.
4. Implementar área dos membros, calendário e painel administrativo.
5. Executar testes automatizados de isolamento entre contas.
6. Publicar na Vercel após configurar segredos e conferir que o repositório está privado.

## Fundo Fraterno
- Fase atual: simulação e intenções, sem arrecadação ou empréstimos.
- Não expor saldo como se fosse dinheiro disponível.
- Operações reais dependem de governança, estrutura jurídica e revisão contábil/regulatória.
