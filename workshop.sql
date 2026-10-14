-- شغّل في Supabase: SQL Editor ← New query ← Run
create table if not exists public.workshop_registrations (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  workshop text not null default 'english-2026-10',
  full_name text not null,
  email text not null,
  phone text not null,
  university text not null,
  major text,
  english_level text,
  expectations text,
  attended boolean not null default false,
  unique (workshop, email)
);
alter table public.workshop_registrations enable row level security;

-- الطالب: تسجيل فقط، وقبل 11:30 صباحاً بتوقيت غزة يوم 2026-10-15 (= 08:30 UTC)
create policy "register for workshop" on public.workshop_registrations
  for insert to anon
  with check (attended = false and workshop = 'english-2026-10' and now() < timestamptz '2026-10-15 08:30:00+00');

-- الأدمن: صلاحية كاملة (نفس بريد الأدمن في مشروع السفراء)
create policy "admin full access workshop" on public.workshop_registrations
  for all to authenticated
  using ((auth.jwt() ->> 'email') = 'nextstepai12@gmail.com')
  with check ((auth.jwt() ->> 'email') = 'nextstepai12@gmail.com');
