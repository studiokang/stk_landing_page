-- Supabase → SQL Editor 에서 한 번에 실행
-- 테이블명: contact_emails

alter table public.contact_emails enable row level security;

-- 익명(anon) 사용자: 행 추가만 허용 (이메일 제출)
create policy "contact_emails_insert_anon"
  on public.contact_emails
  for insert
  to anon
  with check (true);

-- 읽기는 기본 거부(정책 없음). 대시보드(Table Editor)에서는 관리자로 계속 조회 가능.
