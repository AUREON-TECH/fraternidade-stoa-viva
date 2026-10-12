-- Run in Supabase SQL editor. No public registration or client-side member approval.
create table if not exists public.members (
 user_id uuid primary key references auth.users(id) on delete cascade,
 full_name text not null,
 status text not null default 'pending' check (status in ('pending','approved','suspended')),
 role text not null default 'member' check (role in ('founder','support','member')),
 created_at timestamptz not null default now()
);
alter table public.members enable row level security;
-- Each user can see only their own membership; admin writes happen via trusted server/service role.
create policy "Read own membership" on public.members for select to authenticated using (auth.uid()=user_id);
-- Never expose service_role keys to the browser. Founder approval must be implemented server-side.
