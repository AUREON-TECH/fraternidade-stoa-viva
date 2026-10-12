# Fluxos do portal STOA VIVA — especificação v1

## Entrada por convite
1. Fundador autenticado solicita convite para e-mail de adulto elegível.
2. Servidor valida papel founder e gera token criptograficamente aleatório, com expiração e uso único.
3. Apenas hash do token fica em stoa_viva.invitations.
4. Convidado autentica com provedor confiável; servidor valida e-mail e convite.
5. Candidato aceita Código de Honra e política de privacidade.
6. Fundador decide aprovação. Nenhuma relação trabalhista é condicionada ao ingresso.
7. Sessões são verificadas em todas as chamadas, e aprovação pode ser revogada.

## Papéis
- founder: aprova convites, membros e campanhas; acesso auditado.
- support: auxilia organização, sem aprovar novos membros.
- member: acessa dados próprios e conteúdos autorizados.
- pending/suspended/left: acesso privado bloqueado.

## Fundo Fraterno
- Solicitação: rascunho → análise privada → aprovação/rejeição → encerramento.
- Contribuição: apenas intenção voluntária na fase inicial.
- Não registrar intenção como saldo, pagamento, recebível ou obrigação.
- Não expor motivo pessoal da campanha sem consentimento específico.
- Empréstimos, PIX, cobrança e movimentação real estão fora do escopo até revisão jurídica.

## Antes do lançamento
- Escolher e integrar autenticação Neon Auth/Better Auth.
- Implementar API server-side com autorização por recurso.
- Restringir credenciais SQL a usuário dedicado e privilégios mínimos.
- Aplicar limites de taxa, validação de entrada, logs sem dados sensíveis e testes de invasão horizontal.
- Validar consentimento, LGPD e políticas de retenção de dados.
- Testar dois usuários distintos e fundador, inclusive sessões expiradas.
- Confirmar domínio e publicação; jamais considerar este protótipo como acesso seguro.
