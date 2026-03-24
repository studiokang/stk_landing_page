-- RLS 정책은 있는데도 INSERT가 막히면, anon 역할에 테이블 권한이 없을 수 있습니다.
-- Supabase → SQL Editor → Run (이미 RLS SQL을 실행한 뒤에 추가 실행)

grant usage on schema public to anon;
grant insert on table public.contact_emails to anon;
