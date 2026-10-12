-- STOA VIVA / AUREON BASE
-- Run only after reviewing the target database and backup.
-- Does not create a founder account, password, payment, or loan.
BEGIN;
CREATE SCHEMA IF NOT EXISTS stoa_viva;
CREATE TABLE IF NOT EXISTS stoa_viva.members (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  full_name text NOT NULL,
  email text NOT NULL UNIQUE,
  status text NOT NULL DEFAULT 'pending',
  role text NOT NULL DEFAULT 'member',
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS stoa_viva.invitations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  invitee_email text NOT NULL,
  token_hash text NOT NULL UNIQUE,
  expires_at timestamptz NOT NULL,
  redeemed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS stoa_viva.meetings (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  starts_at timestamptz NOT NULL,
  location_text text,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS stoa_viva.meeting_attendance (
  meeting_id uuid NOT NULL REFERENCES stoa_viva.meetings(id),
  member_id uuid NOT NULL REFERENCES stoa_viva.members(id),
  response text NOT NULL CHECK (response IN ('yes','no','maybe')),
  responded_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY(meeting_id,member_id)
);
REVOKE ALL ON SCHEMA stoa_viva FROM PUBLIC;
REVOKE ALL ON ALL TABLES IN SCHEMA stoa_viva FROM PUBLIC;
REVOKE ALL ON ALL SEQUENCES IN SCHEMA stoa_viva FROM PUBLIC;
COMMIT;
