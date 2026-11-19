-- Turn on row-level security (RLS) for every app table, with no policies.
-- Effect: Supabase's public API roles (anon / authenticated, i.e. anyone holding the
-- publishable key) can no longer read or write these tables. The app itself is
-- unaffected: it connects with a direct Postgres URL as the role that owns these
-- tables (see src/server/db/client.ts), and a table owner is not subject to RLS
-- unless FORCE ROW LEVEL SECURITY is set, which it is not here.
ALTER TABLE "audit_logs" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "calendar_event_links" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "external_busy_periods" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "external_calendar_sources" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "fee_rules" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "notification_jobs" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "owner_blocks" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "payment_policies" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "payment_schedule_items" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "payments" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "properties" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "rate_limits" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "rate_rules" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "reservations" ENABLE ROW LEVEL SECURITY;
--> statement-breakpoint
ALTER TABLE "webhook_events" ENABLE ROW LEVEL SECURITY;
