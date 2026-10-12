# Cadastro público com aprovação do fundador

Decisão do produto: qualquer candidato adulto pode solicitar ingresso pelo formulário de cadastro; a comunidade continua privada. Cadastro não equivale a aprovação.

## Fluxo obrigatório
1. Candidato cria conta via provedor de autenticação seguro e verifica e-mail.
2. Servidor cria solicitação com status pending; aceitar Código de Honra é obrigatório.
3. Candidato recebe mensagem: "Cadastro recebido. Aguarde aprovação do fundador."
4. Fundador autenticado visualiza solicitações pendentes e decide aprovar/rejeitar.
5. A aprovação é validada NO SERVIDOR, nunca só no frontend.
6. Usuário approved pode acessar áreas privadas; pending/rejected/suspended não pode.
7. O limite inicial de 30 aprovados deve ser imposto transacionalmente no backend, sem condição de corrida.
8. Nenhum membro ou conselheiro pode alterar seu próprio papel ou status.
9. Consentimento, exclusão de conta e acesso aos dados próprios devem respeitar LGPD.
10. Rejeição não causa exposição pública ou repercussão profissional.

## Estados
pending → approved | rejected; approved → suspended | left; suspended → approved | left.
O fundador pode revisar candidaturas, com registro de data e auditoria.

## Segurança
- Não criar senha em tabelas próprias; usar Neon Auth/Better Auth ou provedor equivalente.
- Backend verifica token/sessão e mapeamento para stoa_viva.members em cada endpoint.
- Nenhuma rota financeira aceita transações reais.
- A página de cadastro não deve coletar credenciais até o backend de autenticação estar implantado.

## Rotas planejadas
POST /api/auth/sign-up — via provedor, e-mail verificado
GET /api/me — perfil e status
GET /api/founder/applications — somente founder
POST /api/founder/applications/:id/approve — somente founder, auditado
POST /api/founder/applications/:id/reject — somente founder, auditado
