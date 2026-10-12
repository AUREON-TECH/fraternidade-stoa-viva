# Provisionamento seguro da conta fundadora

E-mail designado pelo fundador: stoaviva.oficial@gmail.com
Nome de exibição: FRATERNIDADE STOA VIVA
Papel previsto: founder

**Não** cadastrar senha em GitHub, SQL, arquivos .env, tickets ou mensagens.
**Não** atribuir role=founder apenas porque o cadastro declarou este e-mail.
**Não** ativar acesso antes de comprovar propriedade da caixa postal.

Procedimento:
1. Integrar provedor de autenticação no backend (Neon Auth/Better Auth ou equivalente).
2. Enviar verificação de e-mail ao endereço designado; confirmar que o titular a concluiu.
3. Em operação administrativa autenticada e auditada, vincular o identificador imutável do provedor ao registro de stoa_viva.members.
4. Atribuir papel founder uma única vez via bootstrap administrativo fora do frontend; proteger contra autoelevação.
5. Habilitar MFA para founder, verificar recuperação de acesso e testar revogação de sessão.
6. Testar: usuário pending recebe 403; usuário member recebe 403 em rotas founder; founder validado aprova membro; aprovação é registrada em auditoria.
7. Limite de 30 aprovados implementado no servidor com transação e lock.
8. Só então liberar cadastro e login público.

Aviso: O repositório GitHub está atualmente PUBLIC. Nunca colocar segredos, credenciais ou dados pessoais nele. Tornar privado antes de operar.
