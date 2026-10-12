# FRATERNIDADE STOA VIVA

Portal privado da fraternidade. Identidade: preto e dourado. Essência: estoicismo, família, espiritualidade respeitosa, disciplina e irmandade.

## Fase 1
- Landing page responsiva
- Formulário de login (Supabase Auth)
- Verificação de status de membro no banco
- Base SQL com RLS

## Executar
```bash
npm install
cp .env.example .env
npm run dev
```
Preencha VITE_SUPABASE_URL e VITE_SUPABASE_ANON_KEY. Rode supabase/schema.sql no SQL Editor.

**Importante:** Não há ainda painel de aprovação, convite seguro, nem área interna de membros. A interface não deve ser considerada um controle de acesso suficiente: toda tabela privada futura precisa de políticas RLS específicas e autorização no servidor. Não disponibilize credenciais nem service_role no frontend.

## Próximas etapas
1. Configurar projeto Supabase e segredos no deploy.
2. Criar backend seguro para convites e aprovação exclusiva do fundador.
3. Área autenticada e painel de gestão.
4. Calendário, código de honra e biblioteca.
5. Testes de autorização e publicação.
