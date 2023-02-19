-- CreateTable
CREATE TABLE "about_about" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "description" TEXT NOT NULL,
    "description_uz" TEXT,
    "description_sr" TEXT,
    "description_ru" TEXT,

    CONSTRAINT "about_about_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_advertisement" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "type" VARCHAR(200) NOT NULL,
    "cover" VARCHAR(100) NOT NULL,
    "redirect_url" VARCHAR(200) NOT NULL,
    "is_active" BOOLEAN NOT NULL,

    CONSTRAINT "about_advertisement_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_application" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "full_name" VARCHAR(256) NOT NULL,
    "phone_number" VARCHAR(25) NOT NULL,
    "question" TEXT NOT NULL,
    "was_seen" BOOLEAN NOT NULL,

    CONSTRAINT "about_application_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_contact" (
    "id" BIGSERIAL NOT NULL,
    "phone" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "address" VARCHAR(255) NOT NULL,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "telegram" VARCHAR(255),
    "twitter" VARCHAR(255),
    "youtube" VARCHAR(255),
    "instagram" VARCHAR(255),
    "facebook" VARCHAR(255),
    "address_ru" VARCHAR(255),
    "address_sr" VARCHAR(255),
    "address_uz" VARCHAR(255),
    "work_from" TIME(6),
    "work_to" TIME(6),
    "office_name" VARCHAR(255) NOT NULL,
    "office_city_id" BIGINT,

    CONSTRAINT "about_contact_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_instruction" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "content" TEXT NOT NULL,
    "content_uz" TEXT,
    "content_sr" TEXT,
    "content_ru" TEXT,
    "is_active" BOOLEAN NOT NULL,
    "description" TEXT NOT NULL,
    "category_id" BIGINT NOT NULL,
    "description_ru" TEXT,
    "description_sr" TEXT,
    "description_uz" TEXT,

    CONSTRAINT "about_instruction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_instructionanswer" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "answer" VARCHAR(255) NOT NULL,
    "instruction_id" BIGINT NOT NULL,
    "user_id" BIGINT,

    CONSTRAINT "about_instructionanswer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_instructioncategory" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "icon" VARCHAR(100) NOT NULL,
    "title_ru" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_uz" VARCHAR(255),

    CONSTRAINT "about_instructioncategory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_setting" (
    "id" BIGSERIAL NOT NULL,
    "main_page_category_for_body_bath_id" BIGINT,
    "main_page_category_for_ladies_id" BIGINT,
    "cashback_percent" DECIMAL(5,2) NOT NULL,
    "mobile_main_page_category_for_body_id" BIGINT,
    "OFFICE_FROM_LATITUDE" DECIMAL(9,6) NOT NULL,
    "OFFICE_FROM_LONGITUDE" DECIMAL(9,6) NOT NULL,
    "soliq_nds" DOUBLE PRECISION NOT NULL,
    "main_warehouse_id" BIGINT,

    CONSTRAINT "about_setting_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_setting_own_delivery_disticts" (
    "id" BIGSERIAL NOT NULL,
    "setting_id" BIGINT NOT NULL,
    "district_id" BIGINT NOT NULL,

    CONSTRAINT "about_setting_own_delivery_disticts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_setting_own_delivery_regions" (
    "id" BIGSERIAL NOT NULL,
    "setting_id" BIGINT NOT NULL,
    "region_id" BIGINT NOT NULL,

    CONSTRAINT "about_setting_own_delivery_regions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_sociallink" (
    "id" BIGSERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "url" VARCHAR(200) NOT NULL,
    "order" INTEGER NOT NULL,
    "icon" VARCHAR(100) NOT NULL,

    CONSTRAINT "about_sociallink_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_termsofuse" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "content" TEXT NOT NULL,
    "content_uz" TEXT,
    "content_sr" TEXT,
    "content_ru" TEXT,

    CONSTRAINT "about_termsofuse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_typo" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "content" TEXT NOT NULL,
    "user_id" BIGINT,
    "status" SMALLINT NOT NULL,

    CONSTRAINT "about_typo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "about_typoimages" (
    "id" BIGSERIAL NOT NULL,
    "image" VARCHAR(100) NOT NULL,
    "typo_id" BIGINT,

    CONSTRAINT "about_typoimages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account_courier" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "contact_phone" VARCHAR(13) NOT NULL,
    "role" SMALLINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "car_number" VARCHAR(13) NOT NULL,

    CONSTRAINT "account_courier_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account_registrationstate" (
    "id" BIGSERIAL NOT NULL,
    "ip" VARCHAR(128),
    "state_start_at" TIMESTAMPTZ(6) NOT NULL,
    "state_expire_at" TIMESTAMPTZ(6) NOT NULL,
    "state" VARCHAR(32) NOT NULL,
    "uuid" UUID NOT NULL,
    "full_name" VARCHAR(128),
    "phone" VARCHAR(16),
    "referral" VARCHAR(10),
    "code" VARCHAR(128),
    "attempts" INTEGER NOT NULL,
    "expire_at" TIMESTAMPTZ(6),
    "confirm_at" TIMESTAMPTZ(6),
    "error_message" TEXT,
    "password_attempts" INTEGER NOT NULL,
    "api_response" TEXT,

    CONSTRAINT "account_registrationstate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account_user" (
    "id" BIGSERIAL NOT NULL,
    "password" VARCHAR(128) NOT NULL,
    "last_login" TIMESTAMPTZ(6),
    "is_superuser" BOOLEAN NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "role" INTEGER NOT NULL,
    "email" VARCHAR(254),
    "is_staff" BOOLEAN NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "date_joined" TIMESTAMPTZ(6) NOT NULL,
    "device" VARCHAR(500),
    "ip_address" VARCHAR(30),
    "is_verified" BOOLEAN NOT NULL,
    "pin" VARCHAR(10) NOT NULL,
    "last_generated" TIMESTAMPTZ(6),
    "phone" VARCHAR(128) NOT NULL,
    "full_name" VARCHAR(128),
    "address" VARCHAR(512),
    "avatar" VARCHAR(100),
    "coupon_balance" DECIMAL(18,2) NOT NULL,
    "language" VARCHAR(16),
    "district_id" BIGINT,
    "cashback_balance" DECIMAL(20,2) NOT NULL,
    "uuid" UUID,
    "_is_deleted" BOOLEAN NOT NULL,

    CONSTRAINT "account_user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account_user_groups" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT NOT NULL,
    "group_id" INTEGER NOT NULL,

    CONSTRAINT "account_user_groups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account_user_user_permissions" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT NOT NULL,
    "permission_id" INTEGER NOT NULL,

    CONSTRAINT "account_user_user_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "account_userloginaction" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "os_system" VARCHAR(411) NOT NULL,
    "user_id" BIGINT NOT NULL,

    CONSTRAINT "account_userloginaction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "admincommands_commandruninstance" (
    "id" BIGSERIAL NOT NULL,
    "command" TEXT NOT NULL,
    "stdout" TEXT NOT NULL,
    "stderr" TEXT NOT NULL,
    "exception" TEXT NOT NULL,
    "executed_at" TIMESTAMPTZ(6) NOT NULL,
    "finished_at" TIMESTAMPTZ(6),
    "runner_user_id" BIGINT,

    CONSTRAINT "admincommands_commandruninstance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "auditlog_logentry" (
    "id" SERIAL NOT NULL,
    "object_pk" VARCHAR(255) NOT NULL,
    "object_id" BIGINT,
    "object_repr" TEXT NOT NULL,
    "action" SMALLINT NOT NULL,
    "changes" TEXT NOT NULL,
    "timestamp" TIMESTAMPTZ(6) NOT NULL,
    "actor_id" BIGINT,
    "content_type_id" INTEGER NOT NULL,
    "remote_addr" INET,
    "additional_data" JSONB,
    "serialized_data" JSONB,

    CONSTRAINT "auditlog_logentry_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "auth_group" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(150) NOT NULL,

    CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "auth_group_permissions" (
    "id" BIGSERIAL NOT NULL,
    "group_id" INTEGER NOT NULL,
    "permission_id" INTEGER NOT NULL,

    CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "auth_permission" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "content_type_id" INTEGER NOT NULL,
    "codename" VARCHAR(100) NOT NULL,

    CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_country" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "name_uz" VARCHAR(255),
    "name_sr" VARCHAR(255),
    "name_ru" VARCHAR(255),

    CONSTRAINT "common_country_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_district" (
    "id" BIGSERIAL NOT NULL,
    "title" VARCHAR(500) NOT NULL,
    "title_uz" VARCHAR(500),
    "title_sr" VARCHAR(500),
    "title_ru" VARCHAR(500),
    "region_id" BIGINT NOT NULL,
    "delivery_id" INTEGER,
    "soato" VARCHAR(32),

    CONSTRAINT "common_district_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_faq" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "question" VARCHAR(255) NOT NULL,
    "answer" TEXT NOT NULL,

    CONSTRAINT "common_faq_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_footer" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(256) NOT NULL,
    "title_uz" VARCHAR(256),
    "title_sr" VARCHAR(256),
    "title_ru" VARCHAR(256),
    "order" INTEGER NOT NULL,

    CONSTRAINT "common_footer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_footeritem" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(256) NOT NULL,
    "title_uz" VARCHAR(256),
    "title_sr" VARCHAR(256),
    "title_ru" VARCHAR(256),
    "path" VARCHAR(256) NOT NULL,
    "order" INTEGER NOT NULL,
    "footer_id" BIGINT NOT NULL,

    CONSTRAINT "common_footeritem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_headermenu" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "order" INTEGER NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "category_id" BIGINT,

    CONSTRAINT "common_headermenu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_news" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "slug" VARCHAR(255) NOT NULL,
    "content" TEXT NOT NULL,
    "content_uz" TEXT,
    "content_sr" TEXT,
    "content_ru" TEXT,
    "image" VARCHAR(100),
    "date" TIMESTAMPTZ(6) NOT NULL,
    "is_active" BOOLEAN NOT NULL,

    CONSTRAINT "common_news_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_notifications" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "description" TEXT NOT NULL,
    "description_uz" TEXT,
    "description_sr" TEXT,
    "description_ru" TEXT,
    "content" TEXT NOT NULL,
    "content_uz" TEXT,
    "content_sr" TEXT,
    "content_ru" TEXT,
    "date" TIMESTAMPTZ(6) NOT NULL,
    "image" VARCHAR(100),
    "content_type_id" INTEGER,
    "object_id" INTEGER,
    "type" VARCHAR(32),
    "user_id" BIGINT,

    CONSTRAINT "common_notifications_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_notifications_viewers" (
    "id" BIGSERIAL NOT NULL,
    "notifications_id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL,

    CONSTRAINT "common_notifications_readers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_readstoryitem" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "fingerprint" VARCHAR(512),
    "story_item_id" BIGINT NOT NULL,
    "user_id" BIGINT,

    CONSTRAINT "common_readstoryitem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_region" (
    "id" BIGSERIAL NOT NULL,
    "title" VARCHAR(500) NOT NULL,
    "title_ru" VARCHAR(500),
    "title_sr" VARCHAR(500),
    "title_uz" VARCHAR(500),
    "delivery_id" INTEGER,
    "soato" VARCHAR(32),

    CONSTRAINT "common_region_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_staticpage" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(256) NOT NULL,
    "title_uz" VARCHAR(256),
    "title_sr" VARCHAR(256),
    "title_ru" VARCHAR(256),
    "second_title" VARCHAR(256) NOT NULL,
    "second_title_uz" VARCHAR(256),
    "second_title_sr" VARCHAR(256),
    "second_title_ru" VARCHAR(256),
    "body" TEXT NOT NULL,
    "body_uz" TEXT,
    "body_sr" TEXT,
    "body_ru" TEXT,
    "slug" VARCHAR(255) NOT NULL,
    "is_active" BOOLEAN NOT NULL,

    CONSTRAINT "common_staticpage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_story" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255),
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "description" TEXT NOT NULL,
    "description_uz" TEXT,
    "description_sr" TEXT,
    "description_ru" TEXT,
    "url" VARCHAR(200),
    "image" VARCHAR(100),
    "is_active" BOOLEAN NOT NULL,
    "end_time" TIMESTAMPTZ(6) NOT NULL,
    "product_id" BIGINT,
    "video_url" VARCHAR(200),
    "video_duration" INTEGER,
    "video" VARCHAR(100),

    CONSTRAINT "common_story_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "common_storyitem" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(256),
    "title_uz" VARCHAR(256),
    "title_sr" VARCHAR(256),
    "title_ru" VARCHAR(256),
    "description" VARCHAR(256) NOT NULL,
    "description_uz" VARCHAR(256),
    "description_sr" VARCHAR(256),
    "description_ru" VARCHAR(256),
    "image" VARCHAR(100),
    "url" VARCHAR(200),
    "video" VARCHAR(100),
    "video_url" VARCHAR(200),
    "video_duration" INTEGER,
    "story_id" BIGINT NOT NULL,

    CONSTRAINT "common_storyitem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "delivery_bts_deliveryorder" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "status" INTEGER NOT NULL,
    "senderAddress" VARCHAR(255) NOT NULL,
    "senderReal" VARCHAR(255) NOT NULL,
    "senderPhone" VARCHAR(255) NOT NULL,
    "receiverAddress" VARCHAR(255) NOT NULL,
    "receiverPhone" VARCHAR(255) NOT NULL,
    "receiverPhone1" VARCHAR(255),
    "senderDelivery" INTEGER NOT NULL,
    "receiverDelivery" INTEGER NOT NULL,
    "package" INTEGER NOT NULL,
    "postType" INTEGER NOT NULL,
    "cost" DECIMAL(15,2),
    "weight" DECIMAL(15,3) NOT NULL,
    "piece" INTEGER NOT NULL,
    "volume" INTEGER NOT NULL,
    "urgent" INTEGER NOT NULL,
    "takePhoto" INTEGER NOT NULL,
    "senderSign" VARCHAR(255),
    "receiverSign" VARCHAR(255),
    "senderDate" DATE,
    "receiverDate" DATE,
    "barcode" VARCHAR(255),
    "order_id" BIGINT NOT NULL,
    "receiver_id" BIGINT NOT NULL,
    "receiverCity_id" BIGINT NOT NULL,
    "receiverRegion_id" BIGINT,
    "senderCity_id" BIGINT NOT NULL,
    "senderRegion_id" BIGINT NOT NULL,
    "bts_order_id" VARCHAR(255),
    "is_test" BOOLEAN NOT NULL,

    CONSTRAINT "delivery_bts_deliveryorder_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "delivery_bts_deliverysetting" (
    "id" BIGSERIAL NOT NULL,
    "default_package_type" INTEGER NOT NULL,
    "default_postType" INTEGER NOT NULL,
    "default_senderDelivery" INTEGER NOT NULL,
    "default_receiverDelivery" INTEGER NOT NULL,
    "auth_token" VARCHAR(255) NOT NULL,

    CONSTRAINT "delivery_bts_deliverysetting_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_admin_log" (
    "id" SERIAL NOT NULL,
    "action_time" TIMESTAMPTZ(6) NOT NULL,
    "object_id" TEXT,
    "object_repr" VARCHAR(200) NOT NULL,
    "action_flag" SMALLINT NOT NULL,
    "change_message" TEXT NOT NULL,
    "content_type_id" INTEGER,
    "user_id" BIGINT NOT NULL,

    CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_celery_beat_clockedschedule" (
    "id" SERIAL NOT NULL,
    "clocked_time" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "django_celery_beat_clockedschedule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_celery_beat_crontabschedule" (
    "id" SERIAL NOT NULL,
    "minute" VARCHAR(240) NOT NULL,
    "hour" VARCHAR(96) NOT NULL,
    "day_of_week" VARCHAR(64) NOT NULL,
    "day_of_month" VARCHAR(124) NOT NULL,
    "month_of_year" VARCHAR(64) NOT NULL,
    "timezone" VARCHAR(63) NOT NULL,

    CONSTRAINT "django_celery_beat_crontabschedule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_celery_beat_intervalschedule" (
    "id" SERIAL NOT NULL,
    "every" INTEGER NOT NULL,
    "period" VARCHAR(24) NOT NULL,

    CONSTRAINT "django_celery_beat_intervalschedule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_celery_beat_periodictask" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "task" VARCHAR(200) NOT NULL,
    "args" TEXT NOT NULL,
    "kwargs" TEXT NOT NULL,
    "queue" VARCHAR(200),
    "exchange" VARCHAR(200),
    "routing_key" VARCHAR(200),
    "expires" TIMESTAMPTZ(6),
    "enabled" BOOLEAN NOT NULL,
    "last_run_at" TIMESTAMPTZ(6),
    "total_run_count" INTEGER NOT NULL,
    "date_changed" TIMESTAMPTZ(6) NOT NULL,
    "description" TEXT NOT NULL,
    "crontab_id" INTEGER,
    "interval_id" INTEGER,
    "solar_id" INTEGER,
    "one_off" BOOLEAN NOT NULL,
    "start_time" TIMESTAMPTZ(6),
    "priority" INTEGER,
    "headers" TEXT NOT NULL,
    "clocked_id" INTEGER,
    "expire_seconds" INTEGER,

    CONSTRAINT "django_celery_beat_periodictask_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_celery_beat_periodictasks" (
    "ident" SMALLINT NOT NULL,
    "last_update" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "django_celery_beat_periodictasks_pkey" PRIMARY KEY ("ident")
);

-- CreateTable
CREATE TABLE "django_celery_beat_solarschedule" (
    "id" SERIAL NOT NULL,
    "event" VARCHAR(24) NOT NULL,
    "latitude" DECIMAL(9,6) NOT NULL,
    "longitude" DECIMAL(9,6) NOT NULL,

    CONSTRAINT "django_celery_beat_solarschedule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_content_type" (
    "id" SERIAL NOT NULL,
    "app_label" VARCHAR(100) NOT NULL,
    "model" VARCHAR(100) NOT NULL,

    CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_migrations" (
    "id" BIGSERIAL NOT NULL,
    "app" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "applied" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_q_ormq" (
    "id" SERIAL NOT NULL,
    "key" VARCHAR(100) NOT NULL,
    "payload" TEXT NOT NULL,
    "lock" TIMESTAMPTZ(6),

    CONSTRAINT "django_q_ormq_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_q_schedule" (
    "id" SERIAL NOT NULL,
    "func" VARCHAR(256) NOT NULL,
    "hook" VARCHAR(256),
    "args" TEXT,
    "kwargs" TEXT,
    "schedule_type" VARCHAR(1) NOT NULL,
    "repeats" INTEGER NOT NULL,
    "next_run" TIMESTAMPTZ(6),
    "task" VARCHAR(100),
    "name" VARCHAR(100),
    "minutes" SMALLINT,
    "cron" VARCHAR(100),
    "cluster" VARCHAR(100),

    CONSTRAINT "django_q_schedule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_q_task" (
    "name" VARCHAR(100) NOT NULL,
    "func" VARCHAR(256) NOT NULL,
    "hook" VARCHAR(256),
    "args" TEXT,
    "kwargs" TEXT,
    "result" TEXT,
    "started" TIMESTAMPTZ(6) NOT NULL,
    "stopped" TIMESTAMPTZ(6) NOT NULL,
    "success" BOOLEAN NOT NULL,
    "id" VARCHAR(32) NOT NULL,
    "group" VARCHAR(100),
    "attempt_count" INTEGER NOT NULL,

    CONSTRAINT "django_q_task_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "django_session" (
    "session_key" VARCHAR(40) NOT NULL,
    "session_data" TEXT NOT NULL,
    "expire_date" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key")
);

-- CreateTable
CREATE TABLE "karmonPay_transaction" (
    "id" BIGSERIAL NOT NULL,
    "amount" DECIMAL(18,2) NOT NULL,
    "description" VARCHAR(255),
    "card_id" BIGINT NOT NULL,
    "order_id" BIGINT NOT NULL,
    "transactionId" VARCHAR(255),
    "is_payed" BOOLEAN NOT NULL,

    CONSTRAINT "karmonPay_transaction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "location_service_district" (
    "id" BIGSERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "soato" VARCHAR(255) NOT NULL,
    "region_id" BIGINT NOT NULL,
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "title_uz" VARCHAR(255),

    CONSTRAINT "location_service_district_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "location_service_region" (
    "id" BIGSERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "soato" VARCHAR(255) NOT NULL,
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "title_uz" VARCHAR(255),

    CONSTRAINT "location_service_region_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_cartproduct" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "amount" INTEGER NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "product_id" BIGINT NOT NULL,
    "user_id" BIGINT,
    "fingerprint" VARCHAR(255),

    CONSTRAINT "order_cartproduct_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_coupon" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "code" VARCHAR(32) NOT NULL,
    "from_date" TIMESTAMPTZ(6) NOT NULL,
    "to_date" TIMESTAMPTZ(6) NOT NULL,
    "amount" DECIMAL(18,2) NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "limit_user" INTEGER,

    CONSTRAINT "order_coupon_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_couponuser" (
    "id" BIGSERIAL NOT NULL,
    "redeemed_at" TIMESTAMPTZ(6) NOT NULL,
    "coupon_id" BIGINT,
    "user_id" BIGINT NOT NULL,
    "amount" DECIMAL(18,2),

    CONSTRAINT "order_couponuser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_currency" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "type" SMALLINT NOT NULL,
    "conversion" DECIMAL(10,2) NOT NULL,

    CONSTRAINT "order_currency_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_distancetariff" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "start" INTEGER NOT NULL,
    "end" INTEGER NOT NULL,
    "price" DECIMAL(18,2) NOT NULL,
    "type" INTEGER NOT NULL,

    CONSTRAINT "order_distancetariff_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_order" (
    "id" BIGSERIAL NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "status" SMALLINT NOT NULL,
    "is_deleted" BOOLEAN NOT NULL,
    "worker_count" INTEGER NOT NULL,
    "address" VARCHAR(1024) NOT NULL,
    "receiver_fish" VARCHAR(255) NOT NULL,
    "receiver_phone" VARCHAR(255) NOT NULL,
    "latitude" DECIMAL(9,6) NOT NULL,
    "longitude" DECIMAL(9,6) NOT NULL,
    "payment_status" SMALLINT NOT NULL,
    "payment_type" SMALLINT NOT NULL,
    "delivery_price" DECIMAL(18,2) NOT NULL,
    "worker_price" DECIMAL(18,2) NOT NULL,
    "total_price" DECIMAL(18,2) NOT NULL,
    "coupon_price" DECIMAL(18,2) NOT NULL,
    "order_price" DECIMAL(18,2) NOT NULL,
    "paid_time" TIMESTAMPTZ(6),
    "verified_time" TIMESTAMPTZ(6),
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "total_distance" BIGINT NOT NULL,
    "total_weight" DECIMAL(18,3) NOT NULL,
    "user_id" BIGINT NOT NULL,
    "distance_price" DECIMAL(18,2) NOT NULL,
    "weight_price" DECIMAL(18,2) NOT NULL,
    "courier_id" BIGINT,
    "worker_id" BIGINT,
    "receiver_phone2" VARCHAR(255),
    "card_id" BIGINT,
    "payment_transaction_id" VARCHAR(255),
    "canceled_time" TIMESTAMPTZ(6),
    "cashback_price" DECIMAL(18,2) NOT NULL,
    "use_cashback_balance" BOOLEAN NOT NULL,
    "district_id" BIGINT,
    "payment_transaction_create_date" TIMESTAMPTZ(6),
    "location_map" VARCHAR(24),
    "delivery_type" SMALLINT NOT NULL,
    "discount" DECIMAL(18,2) NOT NULL,

    CONSTRAINT "order_order_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_ordercard" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "status" SMALLINT NOT NULL,
    "card_id" BIGINT,
    "order_id" BIGINT,
    "success_receipt_id" VARCHAR(32),

    CONSTRAINT "order_ordercard_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_orderproduct" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "status" SMALLINT NOT NULL,
    "product_weight" DECIMAL(18,3) NOT NULL,
    "product_price" DECIMAL(18,2) NOT NULL,
    "amount" INTEGER NOT NULL,
    "order_id" BIGINT NOT NULL,
    "product_id" BIGINT NOT NULL,
    "suggested_to_id" BIGINT,
    "sale_price" DECIMAL(18,2) NOT NULL,
    "unit_id" BIGINT,
    "result_price" DECIMAL(18,2) NOT NULL,

    CONSTRAINT "order_orderproduct_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_orderstatuslog" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "description_type" SMALLINT NOT NULL,
    "status" SMALLINT NOT NULL,
    "date" TIMESTAMPTZ(6) NOT NULL,
    "order_id" BIGINT NOT NULL,

    CONSTRAINT "order_orderstatuslog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_paymenttypesetting" (
    "id" BIGSERIAL NOT NULL,
    "is_card_valid" BOOLEAN NOT NULL,
    "is_cash_valid" BOOLEAN NOT NULL,
    "is_click_valid" BOOLEAN NOT NULL,
    "is_karmonpay_valid" BOOLEAN NOT NULL,
    "is_payme_valid" BOOLEAN NOT NULL,
    "is_uzumbank_valid" BOOLEAN NOT NULL,
    "use_card_real_amount" BOOLEAN NOT NULL,

    CONSTRAINT "order_paymenttypesetting_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_weighttariff" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "start" INTEGER NOT NULL,
    "end" INTEGER NOT NULL,
    "price" DECIMAL(18,2) NOT NULL,
    "type" INTEGER NOT NULL,

    CONSTRAINT "order_weighttariff_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_workerprice" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "price" INTEGER NOT NULL,

    CONSTRAINT "order_workerprice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "payment_card" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "number" VARCHAR(128) NOT NULL,
    "expire" VARCHAR(5) NOT NULL,
    "token" VARCHAR(513),
    "recurrent" BOOLEAN NOT NULL,
    "verify" BOOLEAN NOT NULL,
    "type" VARCHAR(255),
    "user_id" BIGINT,
    "pan" VARCHAR(128),
    "verify_attempt" SMALLINT NOT NULL,
    "card_range_id" BIGINT,
    "merchant_id" VARCHAR(128),
    "otp_session" VARCHAR(128),
    "session" VARCHAR(128),
    "secret_number" VARCHAR(128),

    CONSTRAINT "payment_card_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "payment_cardnumberranges" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "start" VARCHAR(16) NOT NULL,
    "end" VARCHAR(16) NOT NULL,
    "vendor_id" BIGINT NOT NULL,

    CONSTRAINT "payment_cardnumberranges_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "payment_paycomreceipt" (
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "merchant_id" VARCHAR(64) NOT NULL,
    "_id" VARCHAR(32) NOT NULL,
    "create_time" VARCHAR(32) NOT NULL,
    "pay_time" VARCHAR(32),
    "cancel_time" VARCHAR(32),
    "state" INTEGER NOT NULL,
    "type" INTEGER NOT NULL,
    "amount" BIGINT NOT NULL,
    "commission" INTEGER NOT NULL,
    "account" JSONB,
    "detail" JSONB,
    "card" JSONB,
    "order_id" BIGINT,
    "user_card_id" BIGINT,

    CONSTRAINT "payment_paycomreceipt_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "payment_paymentmerchantrequestlog" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "provider" VARCHAR(32),
    "header" TEXT NOT NULL,
    "body" TEXT NOT NULL,
    "method" VARCHAR(32) NOT NULL,
    "response" TEXT,
    "response_status_code" INTEGER,
    "type" VARCHAR(32) NOT NULL,

    CONSTRAINT "payment_paymentmerchantrequestlog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "payment_processing" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "name" VARCHAR(255) NOT NULL,

    CONSTRAINT "payment_processing_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "payment_vendor" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "processing_id" BIGINT NOT NULL,

    CONSTRAINT "payment_vendor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_banner" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "image" VARCHAR(100),
    "is_active" BOOLEAN NOT NULL,
    "category_id" BIGINT NOT NULL,
    "sub_title" VARCHAR(256),
    "sub_title_ru" VARCHAR(256),
    "sub_title_sr" VARCHAR(256),
    "sub_title_uz" VARCHAR(256),
    "title" VARCHAR(256),
    "title_ru" VARCHAR(256),
    "title_sr" VARCHAR(256),
    "title_uz" VARCHAR(256),
    "url" VARCHAR(200),

    CONSTRAINT "product_banner_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_category" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "icon" VARCHAR(100),
    "order" INTEGER NOT NULL,
    "parent_id" BIGINT,
    "slug" VARCHAR(255),

    CONSTRAINT "product_category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_comment" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "rate" INTEGER NOT NULL,
    "comment" TEXT,
    "product_id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL,

    CONSTRAINT "product_comment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_manufacturer" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "override_price" DECIMAL(3,0) NOT NULL,
    "warehouse_id" BIGINT NOT NULL,
    "icon" VARCHAR(100),
    "description" VARCHAR(255),

    CONSTRAINT "product_manufacturer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_megasale" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(128) NOT NULL,
    "percentage" INTEGER NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "start_at" DATE NOT NULL,
    "end_at" DATE NOT NULL,
    "title_ru" VARCHAR(128),
    "title_sr" VARCHAR(128),
    "title_uz" VARCHAR(128),

    CONSTRAINT "product_megasale_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_megasale_categories" (
    "id" BIGSERIAL NOT NULL,
    "megasale_id" BIGINT NOT NULL,
    "category_id" BIGINT NOT NULL,

    CONSTRAINT "product_megasale_categories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_megasale_manufacturers" (
    "id" BIGSERIAL NOT NULL,
    "megasale_id" BIGINT NOT NULL,
    "manufacturer_id" BIGINT NOT NULL,

    CONSTRAINT "product_megasale_manufacturers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_megasale_products" (
    "id" BIGSERIAL NOT NULL,
    "megasale_id" BIGINT NOT NULL,
    "product_id" BIGINT NOT NULL,

    CONSTRAINT "product_megasale_products_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_mostsearched" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "order" INTEGER NOT NULL,

    CONSTRAINT "product_mostsearched_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_productgroup" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,

    CONSTRAINT "product_productgroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_productimage" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "image" VARCHAR(100),
    "product_id" BIGINT NOT NULL,

    CONSTRAINT "product_productimage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_productlikeduser" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "product_id" BIGINT,
    "user_id" BIGINT,
    "fingerprint" VARCHAR(128),

    CONSTRAINT "product_productlikeduser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_productsystemchangehistory" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "info_text" TEXT,
    "product_id" BIGINT NOT NULL,

    CONSTRAINT "product_productsystemchangehistory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_producttypeattribute" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "field_type" SMALLINT NOT NULL,
    "slug" VARCHAR(50) NOT NULL,
    "is_required" BOOLEAN NOT NULL,
    "category_id" BIGINT NOT NULL,

    CONSTRAINT "product_producttypeattribute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_producttypeattributecheckboxoption" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "product_attr_id" BIGINT NOT NULL,

    CONSTRAINT "product_producttypeattributecheckboxoption_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_producttypeattributeselectoption" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "product_attr_id" BIGINT NOT NULL,

    CONSTRAINT "product_producttypeattributeselectoption_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_targetedaudience" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),

    CONSTRAINT "product_targetedaudience_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_unit" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(128) NOT NULL,
    "title_uz" VARCHAR(128),
    "title_sr" VARCHAR(128),
    "title_ru" VARCHAR(128),

    CONSTRAINT "product_unit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_warehouse" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(128) NOT NULL,
    "description" TEXT,
    "latitude" DECIMAL(9,6) NOT NULL,
    "longitude" DECIMAL(9,6) NOT NULL,
    "district_id" BIGINT,

    CONSTRAINT "product_warehouse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "products" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "title_uz" VARCHAR(255),
    "title_sr" VARCHAR(255),
    "title_ru" VARCHAR(255),
    "slug" VARCHAR(512) NOT NULL,
    "image" VARCHAR(100),
    "feature" TEXT,
    "feature_uz" TEXT,
    "feature_sr" TEXT,
    "feature_ru" TEXT,
    "apply" TEXT,
    "apply_uz" TEXT,
    "apply_sr" TEXT,
    "apply_ru" TEXT,
    "price" DECIMAL(18,2) NOT NULL,
    "sale_price" DECIMAL(18,2),
    "rate" DOUBLE PRECISION NOT NULL,
    "views" INTEGER NOT NULL,
    "comment_count" INTEGER NOT NULL,
    "f" JSONB,
    "category_id" BIGINT,
    "manufacturer_id" BIGINT,
    "product_group_id" BIGINT,
    "is_new" BOOLEAN NOT NULL,
    "is_recommendation" BOOLEAN NOT NULL,
    "weight" DECIMAL(20,3) NOT NULL,
    "currency" SMALLINT NOT NULL,
    "description" TEXT,
    "description_ru" TEXT,
    "description_sr" TEXT,
    "description_uz" TEXT,
    "note" TEXT,
    "is_active" BOOLEAN NOT NULL,
    "override_manufacturer_price" BOOLEAN NOT NULL,
    "purchased_price" DECIMAL(18,2),
    "in_stock" INTEGER NOT NULL,
    "warehouse_id" BIGINT NOT NULL,
    "is_archive" BOOLEAN NOT NULL,
    "unit_id" BIGINT,
    "order" INTEGER,
    "active_megasale_id" BIGINT,
    "manufactured_country_id" BIGINT,
    "targeted_gender" VARCHAR(55),
    "year" INTEGER,
    "targeted_audience_id" BIGINT,
    "regos_imported_date" TIMESTAMPTZ(6),
    "regos_remote_id" VARCHAR(255),
    "regos_extra_data" JSONB,
    "regos_barcode" VARCHAR(255),

    CONSTRAINT "product_product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "products_liked_by" (
    "id" BIGSERIAL NOT NULL,
    "product_id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL,

    CONSTRAINT "product_product_liked_by_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "rest_framework_api_key_apikey" (
    "id" VARCHAR(100) NOT NULL,
    "created" TIMESTAMPTZ(6) NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "revoked" BOOLEAN NOT NULL,
    "expiry_date" TIMESTAMPTZ(6),
    "hashed_key" VARCHAR(100) NOT NULL,
    "prefix" VARCHAR(8) NOT NULL,

    CONSTRAINT "rest_framework_api_key_apikey_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "thumbnail_kvstore" (
    "key" VARCHAR(200) NOT NULL,
    "value" TEXT NOT NULL,

    CONSTRAINT "thumbnail_kvstore_pkey" PRIMARY KEY ("key")
);

-- CreateIndex
CREATE INDEX "about_contact_office_city_id_df3764d6" ON "about_contact"("office_city_id");

-- CreateIndex
CREATE INDEX "about_instruction_category_id_c898a9fc" ON "about_instruction"("category_id");

-- CreateIndex
CREATE INDEX "about_instructionanswer_instruction_id_ad5f297f" ON "about_instructionanswer"("instruction_id");

-- CreateIndex
CREATE INDEX "about_instructionanswer_user_id_d02f5a50" ON "about_instructionanswer"("user_id");

-- CreateIndex
CREATE INDEX "about_setting_main_page_category_for_body_bath_id_cb90ba51" ON "about_setting"("main_page_category_for_body_bath_id");

-- CreateIndex
CREATE INDEX "about_setting_main_page_category_for_ladies_id_3fbd32ca" ON "about_setting"("main_page_category_for_ladies_id");

-- CreateIndex
CREATE INDEX "about_setting_main_warehouse_id_85ec387f" ON "about_setting"("main_warehouse_id");

-- CreateIndex
CREATE INDEX "about_setting_mobile_main_page_category_for_body_id_bd63fd99" ON "about_setting"("mobile_main_page_category_for_body_id");

-- CreateIndex
CREATE INDEX "about_setting_own_delivery_disticts_district_id_374a1baf" ON "about_setting_own_delivery_disticts"("district_id");

-- CreateIndex
CREATE INDEX "about_setting_own_delivery_disticts_setting_id_2616305a" ON "about_setting_own_delivery_disticts"("setting_id");

-- CreateIndex
CREATE UNIQUE INDEX "about_setting_own_delive_setting_id_district_id_0f6caa8a_uniq" ON "about_setting_own_delivery_disticts"("setting_id", "district_id");

-- CreateIndex
CREATE INDEX "about_setting_own_delivery_regions_region_id_e9a45c6d" ON "about_setting_own_delivery_regions"("region_id");

-- CreateIndex
CREATE INDEX "about_setting_own_delivery_regions_setting_id_cba87cb8" ON "about_setting_own_delivery_regions"("setting_id");

-- CreateIndex
CREATE UNIQUE INDEX "about_setting_own_delive_setting_id_region_id_f1737162_uniq" ON "about_setting_own_delivery_regions"("setting_id", "region_id");

-- CreateIndex
CREATE INDEX "about_typo_user_id_918e2917" ON "about_typo"("user_id");

-- CreateIndex
CREATE INDEX "about_typoimages_typo_id_af0585a9" ON "about_typoimages"("typo_id");

-- CreateIndex
CREATE UNIQUE INDEX "account_courier_user_id_key" ON "account_courier"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "account_user_phone_key" ON "account_user"("phone");

-- CreateIndex
CREATE UNIQUE INDEX "account_user_uuid_b4063ea1_uniq" ON "account_user"("uuid");

-- CreateIndex
CREATE INDEX "account_user_distict_id_aae74201" ON "account_user"("district_id");

-- CreateIndex
CREATE INDEX "account_user_phone_1704cc19_like" ON "account_user"("phone");

-- CreateIndex
CREATE INDEX "account_user_groups_group_id_6c71f749" ON "account_user_groups"("group_id");

-- CreateIndex
CREATE INDEX "account_user_groups_user_id_14345e7b" ON "account_user_groups"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "account_user_groups_user_id_group_id_4d09af3e_uniq" ON "account_user_groups"("user_id", "group_id");

-- CreateIndex
CREATE INDEX "account_user_user_permissions_permission_id_66c44191" ON "account_user_user_permissions"("permission_id");

-- CreateIndex
CREATE INDEX "account_user_user_permissions_user_id_cc42d270" ON "account_user_user_permissions"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "account_user_user_permis_user_id_permission_id_48bdd28b_uniq" ON "account_user_user_permissions"("user_id", "permission_id");

-- CreateIndex
CREATE INDEX "account_userloginaction_user_id_0cf873c8" ON "account_userloginaction"("user_id");

-- CreateIndex
CREATE INDEX "admincommands_commandruninstance_runner_user_id_30ba9a1c" ON "admincommands_commandruninstance"("runner_user_id");

-- CreateIndex
CREATE INDEX "auditlog_logentry_action_229afe39" ON "auditlog_logentry"("action");

-- CreateIndex
CREATE INDEX "auditlog_logentry_actor_id_959271d2" ON "auditlog_logentry"("actor_id");

-- CreateIndex
CREATE INDEX "auditlog_logentry_content_type_id_75830218" ON "auditlog_logentry"("content_type_id");

-- CreateIndex
CREATE INDEX "auditlog_logentry_object_id_09c2eee8" ON "auditlog_logentry"("object_id");

-- CreateIndex
CREATE INDEX "auditlog_logentry_object_pk_6e3219c0" ON "auditlog_logentry"("object_pk");

-- CreateIndex
CREATE INDEX "auditlog_logentry_object_pk_6e3219c0_like" ON "auditlog_logentry"("object_pk");

-- CreateIndex
CREATE INDEX "auditlog_logentry_timestamp_37867bb0" ON "auditlog_logentry"("timestamp");

-- CreateIndex
CREATE UNIQUE INDEX "auth_group_name_key" ON "auth_group"("name");

-- CreateIndex
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "auth_group"("name");

-- CreateIndex
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions"("group_id");

-- CreateIndex
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions"("permission_id");

-- CreateIndex
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions"("group_id", "permission_id");

-- CreateIndex
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission"("content_type_id");

-- CreateIndex
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission"("content_type_id", "codename");

-- CreateIndex
CREATE UNIQUE INDEX "common_district_delivery_id_key" ON "common_district"("delivery_id");

-- CreateIndex
CREATE UNIQUE INDEX "common_district_soato_key" ON "common_district"("soato");

-- CreateIndex
CREATE INDEX "common_district_region_id_ed9559e4" ON "common_district"("region_id");

-- CreateIndex
CREATE INDEX "common_district_soato_a7700be8_like" ON "common_district"("soato");

-- CreateIndex
CREATE INDEX "common_footeritem_footer_id_4535a049" ON "common_footeritem"("footer_id");

-- CreateIndex
CREATE INDEX "common_headermenu_category_id_b18b40fa" ON "common_headermenu"("category_id");

-- CreateIndex
CREATE UNIQUE INDEX "common_news_slug_key" ON "common_news"("slug");

-- CreateIndex
CREATE INDEX "common_news_slug_a98ef19a_like" ON "common_news"("slug");

-- CreateIndex
CREATE INDEX "common_notifications_content_type_id_bd0089a7" ON "common_notifications"("content_type_id");

-- CreateIndex
CREATE INDEX "common_notifications_user_id_c527789f" ON "common_notifications"("user_id");

-- CreateIndex
CREATE INDEX "common_notifications_readers_notifications_id_843216d9" ON "common_notifications_viewers"("notifications_id");

-- CreateIndex
CREATE INDEX "common_notifications_readers_user_id_6e07c539" ON "common_notifications_viewers"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "common_notifications_rea_notifications_id_user_id_a61ae576_uniq" ON "common_notifications_viewers"("notifications_id", "user_id");

-- CreateIndex
CREATE INDEX "common_readstoryitem_story_item_id_855f218e" ON "common_readstoryitem"("story_item_id");

-- CreateIndex
CREATE INDEX "common_readstoryitem_user_id_65c25aef" ON "common_readstoryitem"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "common_region_delivery_id_key" ON "common_region"("delivery_id");

-- CreateIndex
CREATE UNIQUE INDEX "common_region_soato_key" ON "common_region"("soato");

-- CreateIndex
CREATE INDEX "common_region_soato_aa85baa6_like" ON "common_region"("soato");

-- CreateIndex
CREATE UNIQUE INDEX "common_staticpage_slug_key" ON "common_staticpage"("slug");

-- CreateIndex
CREATE INDEX "common_staticpage_slug_cbb1de68_like" ON "common_staticpage"("slug");

-- CreateIndex
CREATE INDEX "common_story_product_id_64d06102" ON "common_story"("product_id");

-- CreateIndex
CREATE INDEX "common_storyitem_story_id_349648f0" ON "common_storyitem"("story_id");

-- CreateIndex
CREATE UNIQUE INDEX "delivery_bts_deliveryorder_order_id_key" ON "delivery_bts_deliveryorder"("order_id");

-- CreateIndex
CREATE UNIQUE INDEX "delivery_bts_deliveryorder_bts_order_id_key" ON "delivery_bts_deliveryorder"("bts_order_id");

-- CreateIndex
CREATE INDEX "delivery_bts_deliveryorder_bts_order_id_400ac494_like" ON "delivery_bts_deliveryorder"("bts_order_id");

-- CreateIndex
CREATE INDEX "delivery_bts_deliveryorder_receiverCity_id_36599aad" ON "delivery_bts_deliveryorder"("receiverCity_id");

-- CreateIndex
CREATE INDEX "delivery_bts_deliveryorder_receiverRegion_id_f3f22306" ON "delivery_bts_deliveryorder"("receiverRegion_id");

-- CreateIndex
CREATE INDEX "delivery_bts_deliveryorder_receiver_id_33be8c07" ON "delivery_bts_deliveryorder"("receiver_id");

-- CreateIndex
CREATE INDEX "delivery_bts_deliveryorder_senderCity_id_f8a94816" ON "delivery_bts_deliveryorder"("senderCity_id");

-- CreateIndex
CREATE INDEX "delivery_bts_deliveryorder_senderRegion_id_834acbb8" ON "delivery_bts_deliveryorder"("senderRegion_id");

-- CreateIndex
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log"("content_type_id");

-- CreateIndex
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "django_celery_beat_periodictask_name_key" ON "django_celery_beat_periodictask"("name");

-- CreateIndex
CREATE INDEX "django_celery_beat_periodictask_clocked_id_47a69f82" ON "django_celery_beat_periodictask"("clocked_id");

-- CreateIndex
CREATE INDEX "django_celery_beat_periodictask_crontab_id_d3cba168" ON "django_celery_beat_periodictask"("crontab_id");

-- CreateIndex
CREATE INDEX "django_celery_beat_periodictask_interval_id_a8ca27da" ON "django_celery_beat_periodictask"("interval_id");

-- CreateIndex
CREATE INDEX "django_celery_beat_periodictask_name_265a36b7_like" ON "django_celery_beat_periodictask"("name");

-- CreateIndex
CREATE INDEX "django_celery_beat_periodictask_solar_id_a87ce72c" ON "django_celery_beat_periodictask"("solar_id");

-- CreateIndex
CREATE UNIQUE INDEX "django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq" ON "django_celery_beat_solarschedule"("event", "latitude", "longitude");

-- CreateIndex
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type"("app_label", "model");

-- CreateIndex
CREATE INDEX "django_q_task_id_32882367_like" ON "django_q_task"("id");

-- CreateIndex
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session"("expire_date");

-- CreateIndex
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "django_session"("session_key");

-- CreateIndex
CREATE INDEX "karmonPay_transaction_card_id_76325d3c" ON "karmonPay_transaction"("card_id");

-- CreateIndex
CREATE INDEX "karmonPay_transaction_order_id_a0557bd2" ON "karmonPay_transaction"("order_id");

-- CreateIndex
CREATE INDEX "location_service_district_region_id_cf5810f1" ON "location_service_district"("region_id");

-- CreateIndex
CREATE INDEX "order_cartproduct_product_id_c8dfb40f" ON "order_cartproduct"("product_id");

-- CreateIndex
CREATE INDEX "order_cartproduct_user_id_e2d87521" ON "order_cartproduct"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_coupon_code_key" ON "order_coupon"("code");

-- CreateIndex
CREATE INDEX "order_coupon_code_064f80e4_like" ON "order_coupon"("code");

-- CreateIndex
CREATE INDEX "order_couponuser_coupon_id_ccf0813a" ON "order_couponuser"("coupon_id");

-- CreateIndex
CREATE INDEX "order_couponuser_user_id_a53cc3f0" ON "order_couponuser"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_couponuser_coupon_id_user_id_78da5aba_uniq" ON "order_couponuser"("coupon_id", "user_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_currency_type_b64f9cc1_uniq" ON "order_currency"("type");

-- CreateIndex
CREATE UNIQUE INDEX "order_distancetariff_start_key" ON "order_distancetariff"("start");

-- CreateIndex
CREATE UNIQUE INDEX "order_distancetariff_end_key" ON "order_distancetariff"("end");

-- CreateIndex
CREATE INDEX "order_order_card_id_988dd904" ON "order_order"("card_id");

-- CreateIndex
CREATE INDEX "order_order_courier_id_9ff6eb07" ON "order_order"("courier_id");

-- CreateIndex
CREATE INDEX "order_order_district_id_50ba7521" ON "order_order"("district_id");

-- CreateIndex
CREATE INDEX "order_order_user_id_7cf9bc2b" ON "order_order"("user_id");

-- CreateIndex
CREATE INDEX "order_order_worker_id_ca5674c4" ON "order_order"("worker_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_ordercard_order_id_key" ON "order_ordercard"("order_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_ordercard_success_receipt_id_key" ON "order_ordercard"("success_receipt_id");

-- CreateIndex
CREATE INDEX "order_ordercard_card_id_95980dd6" ON "order_ordercard"("card_id");

-- CreateIndex
CREATE INDEX "order_ordercard_success_receipt_id_85921a7d_like" ON "order_ordercard"("success_receipt_id");

-- CreateIndex
CREATE INDEX "order_orderproduct_order_id_18dae3b0" ON "order_orderproduct"("order_id");

-- CreateIndex
CREATE INDEX "order_orderproduct_product_id_54ab3eb7" ON "order_orderproduct"("product_id");

-- CreateIndex
CREATE INDEX "order_orderproduct_suggested_to_id_3f92c665" ON "order_orderproduct"("suggested_to_id");

-- CreateIndex
CREATE INDEX "order_orderproduct_unit_id_f5d5ff73" ON "order_orderproduct"("unit_id");

-- CreateIndex
CREATE INDEX "order_orderstatuslog_order_id_7ed142ed" ON "order_orderstatuslog"("order_id");

-- CreateIndex
CREATE UNIQUE INDEX "order_orderstatuslog_order_id_status_621771fe_uniq" ON "order_orderstatuslog"("order_id", "status");

-- CreateIndex
CREATE UNIQUE INDEX "order_weighttariff_start_key" ON "order_weighttariff"("start");

-- CreateIndex
CREATE UNIQUE INDEX "order_weighttariff_end_key" ON "order_weighttariff"("end");

-- CreateIndex
CREATE INDEX "payment_card_card_range_id_60911aea" ON "payment_card"("card_range_id");

-- CreateIndex
CREATE INDEX "payment_card_user_id_47696591" ON "payment_card"("user_id");

-- CreateIndex
CREATE INDEX "payment_cardnumberranges_vendor_id_f02733df" ON "payment_cardnumberranges"("vendor_id");

-- CreateIndex
CREATE INDEX "payment_paycomreceipt__id_54f3cf00_like" ON "payment_paycomreceipt"("_id");

-- CreateIndex
CREATE INDEX "payment_paycomreceipt_order_id_3f8f4cb5" ON "payment_paycomreceipt"("order_id");

-- CreateIndex
CREATE INDEX "payment_paycomreceipt_user_card_id_52a7433f" ON "payment_paycomreceipt"("user_card_id");

-- CreateIndex
CREATE UNIQUE INDEX "payment_processing_name_bb079003_uniq" ON "payment_processing"("name");

-- CreateIndex
CREATE INDEX "payment_processing_name_bb079003_like" ON "payment_processing"("name");

-- CreateIndex
CREATE INDEX "payment_vendor_processing_id_618f223c" ON "payment_vendor"("processing_id");

-- CreateIndex
CREATE UNIQUE INDEX "payment_vendor_name_processing_id_3958a19e_uniq" ON "payment_vendor"("name", "processing_id");

-- CreateIndex
CREATE INDEX "product_banner_category_id_2d152ba6" ON "product_banner"("category_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_category_slug_e1f8ccc4_uniq" ON "product_category"("slug");

-- CreateIndex
CREATE INDEX "product_category_parent_id_f6860923" ON "product_category"("parent_id");

-- CreateIndex
CREATE INDEX "product_category_slug_e1f8ccc4_like" ON "product_category"("slug");

-- CreateIndex
CREATE INDEX "product_comment_product_id_b32e96a2" ON "product_comment"("product_id");

-- CreateIndex
CREATE INDEX "product_comment_user_id_ac70fe86" ON "product_comment"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_comment_user_id_product_id_199d8078_uniq" ON "product_comment"("user_id", "product_id");

-- CreateIndex
CREATE INDEX "product_manufacturer_warehouse_id_ae8b5e6e" ON "product_manufacturer"("warehouse_id");

-- CreateIndex
CREATE INDEX "product_megasale_categories_category_id_d8cf5e40" ON "product_megasale_categories"("category_id");

-- CreateIndex
CREATE INDEX "product_megasale_categories_megasale_id_3d1721f7" ON "product_megasale_categories"("megasale_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_megasale_categor_megasale_id_category_id_08e10d29_uniq" ON "product_megasale_categories"("megasale_id", "category_id");

-- CreateIndex
CREATE INDEX "product_megasale_manufacturers_manufacturer_id_d47ea16a" ON "product_megasale_manufacturers"("manufacturer_id");

-- CreateIndex
CREATE INDEX "product_megasale_manufacturers_megasale_id_0fa2ec05" ON "product_megasale_manufacturers"("megasale_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_megasale_manufac_megasale_id_manufacturer_7640e89d_uniq" ON "product_megasale_manufacturers"("megasale_id", "manufacturer_id");

-- CreateIndex
CREATE INDEX "product_megasale_products_megasale_id_e37be448" ON "product_megasale_products"("megasale_id");

-- CreateIndex
CREATE INDEX "product_megasale_products_product_id_3d96bbdf" ON "product_megasale_products"("product_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_megasale_products_megasale_id_product_id_34b92f1d_uniq" ON "product_megasale_products"("megasale_id", "product_id");

-- CreateIndex
CREATE INDEX "product_productimage_product_id_544084bb" ON "product_productimage"("product_id");

-- CreateIndex
CREATE INDEX "product_productlikeduser_product_id_9e28be73" ON "product_productlikeduser"("product_id");

-- CreateIndex
CREATE INDEX "product_productlikeduser_user_id_e2a5b210" ON "product_productlikeduser"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_productlikeduser_product_id_user_id_a65d3158_uniq" ON "product_productlikeduser"("product_id", "user_id");

-- CreateIndex
CREATE INDEX "product_productsystemchangehistory_product_id_bf2d93c1" ON "product_productsystemchangehistory"("product_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_producttypeattribute_slug_key" ON "product_producttypeattribute"("slug");

-- CreateIndex
CREATE INDEX "product_producttypeattribute_category_id_f5448b13" ON "product_producttypeattribute"("category_id");

-- CreateIndex
CREATE INDEX "product_producttypeattribute_slug_d6a95e89_like" ON "product_producttypeattribute"("slug");

-- CreateIndex
CREATE INDEX "product_producttypeattribu_product_attr_id_8b421870" ON "product_producttypeattributecheckboxoption"("product_attr_id");

-- CreateIndex
CREATE INDEX "product_producttypeattribu_product_attr_id_3ac312a8" ON "product_producttypeattributeselectoption"("product_attr_id");

-- CreateIndex
CREATE INDEX "product_warehouse_district_id_b2b8cb0c" ON "product_warehouse"("district_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_product_slug_key" ON "products"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "products_regos_remote_id_key" ON "products"("regos_remote_id");

-- CreateIndex
CREATE INDEX "product_product_category_id_0c725779" ON "products"("category_id");

-- CreateIndex
CREATE INDEX "product_product_manufacturer_id_4a7a0ae9" ON "products"("manufacturer_id");

-- CreateIndex
CREATE INDEX "product_product_product_group_id_b27f3dbd" ON "products"("product_group_id");

-- CreateIndex
CREATE INDEX "product_product_slug_76cde0ae_like" ON "products"("slug");

-- CreateIndex
CREATE INDEX "products_active_megasale_id_d3abd1ab" ON "products"("active_megasale_id");

-- CreateIndex
CREATE INDEX "products_manufactured_country_id_e04597e6" ON "products"("manufactured_country_id");

-- CreateIndex
CREATE INDEX "products_regos_remote_id_99d01aa6_like" ON "products"("regos_remote_id");

-- CreateIndex
CREATE INDEX "products_targeted_audience_id_3e389171" ON "products"("targeted_audience_id");

-- CreateIndex
CREATE INDEX "products_unit_id_4dcdbc75" ON "products"("unit_id");

-- CreateIndex
CREATE INDEX "products_warehouse_id_efa28730" ON "products"("warehouse_id");

-- CreateIndex
CREATE INDEX "products_year_f451368d" ON "products"("year");

-- CreateIndex
CREATE INDEX "product_product_liked_by_product_id_48558e3a" ON "products_liked_by"("product_id");

-- CreateIndex
CREATE INDEX "product_product_liked_by_user_id_7ce8eb14" ON "products_liked_by"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "product_product_liked_by_product_id_user_id_6ffa44db_uniq" ON "products_liked_by"("product_id", "user_id");

-- CreateIndex
CREATE UNIQUE INDEX "rest_framework_api_key_apikey_prefix_key" ON "rest_framework_api_key_apikey"("prefix");

-- CreateIndex
CREATE INDEX "rest_framework_api_key_apikey_created_c61872d9" ON "rest_framework_api_key_apikey"("created");

-- CreateIndex
CREATE INDEX "rest_framework_api_key_apikey_id_6e07e68e_like" ON "rest_framework_api_key_apikey"("id");

-- CreateIndex
CREATE INDEX "rest_framework_api_key_apikey_prefix_4e0db5f8_like" ON "rest_framework_api_key_apikey"("prefix");

-- CreateIndex
CREATE INDEX "thumbnail_kvstore_key_3f850178_like" ON "thumbnail_kvstore"("key");

-- AddForeignKey
ALTER TABLE "about_contact" ADD CONSTRAINT "about_contact_office_city_id_df3764d6_fk_common_district_id" FOREIGN KEY ("office_city_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_instruction" ADD CONSTRAINT "about_instruction_category_id_c898a9fc_fk_about_ins" FOREIGN KEY ("category_id") REFERENCES "about_instructioncategory"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_instructionanswer" ADD CONSTRAINT "about_instructionans_instruction_id_ad5f297f_fk_about_ins" FOREIGN KEY ("instruction_id") REFERENCES "about_instruction"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_instructionanswer" ADD CONSTRAINT "about_instructionanswer_user_id_d02f5a50_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting" ADD CONSTRAINT "about_setting_main_page_category_f_3fbd32ca_fk_product_c" FOREIGN KEY ("main_page_category_for_ladies_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting" ADD CONSTRAINT "about_setting_main_page_category_f_cb90ba51_fk_product_c" FOREIGN KEY ("main_page_category_for_body_bath_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting" ADD CONSTRAINT "about_setting_main_warehouse_id_85ec387f_fk_product_w" FOREIGN KEY ("main_warehouse_id") REFERENCES "product_warehouse"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting" ADD CONSTRAINT "about_setting_mobile_main_page_cat_bd63fd99_fk_product_c" FOREIGN KEY ("mobile_main_page_category_for_body_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting_own_delivery_disticts" ADD CONSTRAINT "about_setting_own_de_district_id_374a1baf_fk_common_di" FOREIGN KEY ("district_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting_own_delivery_disticts" ADD CONSTRAINT "about_setting_own_de_setting_id_2616305a_fk_about_set" FOREIGN KEY ("setting_id") REFERENCES "about_setting"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting_own_delivery_regions" ADD CONSTRAINT "about_setting_own_de_region_id_e9a45c6d_fk_common_re" FOREIGN KEY ("region_id") REFERENCES "common_region"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_setting_own_delivery_regions" ADD CONSTRAINT "about_setting_own_de_setting_id_cba87cb8_fk_about_set" FOREIGN KEY ("setting_id") REFERENCES "about_setting"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_typo" ADD CONSTRAINT "about_typo_user_id_918e2917_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "about_typoimages" ADD CONSTRAINT "about_typoimages_typo_id_af0585a9_fk_about_typo_id" FOREIGN KEY ("typo_id") REFERENCES "about_typo"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_courier" ADD CONSTRAINT "account_courier_user_id_78db3df4_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_user" ADD CONSTRAINT "account_user_district_id_b5d92114_fk_common_district_id" FOREIGN KEY ("district_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_user_groups" ADD CONSTRAINT "account_user_groups_group_id_6c71f749_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_user_groups" ADD CONSTRAINT "account_user_groups_user_id_14345e7b_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_user_user_permissions" ADD CONSTRAINT "account_user_user_pe_permission_id_66c44191_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_user_user_permissions" ADD CONSTRAINT "account_user_user_pe_user_id_cc42d270_fk_account_u" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "account_userloginaction" ADD CONSTRAINT "account_userloginaction_user_id_0cf873c8_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "admincommands_commandruninstance" ADD CONSTRAINT "admincommands_comman_runner_user_id_30ba9a1c_fk_account_u" FOREIGN KEY ("runner_user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "auditlog_logentry" ADD CONSTRAINT "auditlog_logentry_actor_id_959271d2_fk_account_user_id" FOREIGN KEY ("actor_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "auditlog_logentry" ADD CONSTRAINT "auditlog_logentry_content_type_id_75830218_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_district" ADD CONSTRAINT "common_district_region_id_ed9559e4_fk_common_region_id" FOREIGN KEY ("region_id") REFERENCES "common_region"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_footeritem" ADD CONSTRAINT "common_footeritem_footer_id_4535a049_fk_common_footer_id" FOREIGN KEY ("footer_id") REFERENCES "common_footer"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_headermenu" ADD CONSTRAINT "common_headermenu_category_id_b18b40fa_fk_product_category_id" FOREIGN KEY ("category_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_notifications" ADD CONSTRAINT "common_notifications_content_type_id_bd0089a7_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_notifications" ADD CONSTRAINT "common_notifications_user_id_c527789f_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_notifications_viewers" ADD CONSTRAINT "common_notifications_notifications_id_843216d9_fk_common_no" FOREIGN KEY ("notifications_id") REFERENCES "common_notifications"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_notifications_viewers" ADD CONSTRAINT "common_notifications_user_id_6e07c539_fk_account_u" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_readstoryitem" ADD CONSTRAINT "common_readstoryitem_story_item_id_855f218e_fk_common_st" FOREIGN KEY ("story_item_id") REFERENCES "common_storyitem"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_readstoryitem" ADD CONSTRAINT "common_readstoryitem_user_id_65c25aef_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_story" ADD CONSTRAINT "common_story_product_id_64d06102_fk_products_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "common_storyitem" ADD CONSTRAINT "common_storyitem_story_id_349648f0_fk_common_story_id" FOREIGN KEY ("story_id") REFERENCES "common_story"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "delivery_bts_deliveryorder" ADD CONSTRAINT "delivery_bts_deliver_receiverCity_id_36599aad_fk_common_di" FOREIGN KEY ("receiverCity_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "delivery_bts_deliveryorder" ADD CONSTRAINT "delivery_bts_deliver_receiverRegion_id_f3f22306_fk_common_re" FOREIGN KEY ("receiverRegion_id") REFERENCES "common_region"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "delivery_bts_deliveryorder" ADD CONSTRAINT "delivery_bts_deliver_receiver_id_33be8c07_fk_account_u" FOREIGN KEY ("receiver_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "delivery_bts_deliveryorder" ADD CONSTRAINT "delivery_bts_deliver_senderCity_id_f8a94816_fk_common_di" FOREIGN KEY ("senderCity_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "delivery_bts_deliveryorder" ADD CONSTRAINT "delivery_bts_deliver_senderRegion_id_834acbb8_fk_common_re" FOREIGN KEY ("senderRegion_id") REFERENCES "common_region"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "delivery_bts_deliveryorder" ADD CONSTRAINT "delivery_bts_deliveryorder_order_id_f32c9bce_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "order_order"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "django_celery_beat_periodictask" ADD CONSTRAINT "django_celery_beat_p_clocked_id_47a69f82_fk_django_ce" FOREIGN KEY ("clocked_id") REFERENCES "django_celery_beat_clockedschedule"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "django_celery_beat_periodictask" ADD CONSTRAINT "django_celery_beat_p_crontab_id_d3cba168_fk_django_ce" FOREIGN KEY ("crontab_id") REFERENCES "django_celery_beat_crontabschedule"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "django_celery_beat_periodictask" ADD CONSTRAINT "django_celery_beat_p_interval_id_a8ca27da_fk_django_ce" FOREIGN KEY ("interval_id") REFERENCES "django_celery_beat_intervalschedule"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "django_celery_beat_periodictask" ADD CONSTRAINT "django_celery_beat_p_solar_id_a87ce72c_fk_django_ce" FOREIGN KEY ("solar_id") REFERENCES "django_celery_beat_solarschedule"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "karmonPay_transaction" ADD CONSTRAINT "karmonPay_transaction_card_id_76325d3c_fk_payment_card_id" FOREIGN KEY ("card_id") REFERENCES "payment_card"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "karmonPay_transaction" ADD CONSTRAINT "karmonPay_transaction_order_id_a0557bd2_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "order_order"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "location_service_district" ADD CONSTRAINT "location_service_dis_region_id_cf5810f1_fk_location_" FOREIGN KEY ("region_id") REFERENCES "location_service_region"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_cartproduct" ADD CONSTRAINT "order_cartproduct_product_id_c8dfb40f_fk_products_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_cartproduct" ADD CONSTRAINT "order_cartproduct_user_id_e2d87521_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_couponuser" ADD CONSTRAINT "order_couponuser_coupon_id_ccf0813a_fk_order_coupon_id" FOREIGN KEY ("coupon_id") REFERENCES "order_coupon"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_couponuser" ADD CONSTRAINT "order_couponuser_user_id_a53cc3f0_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_order" ADD CONSTRAINT "order_order_card_id_988dd904_fk_payment_card_id" FOREIGN KEY ("card_id") REFERENCES "payment_card"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_order" ADD CONSTRAINT "order_order_courier_id_9ff6eb07_fk_account_courier_id" FOREIGN KEY ("courier_id") REFERENCES "account_courier"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_order" ADD CONSTRAINT "order_order_district_id_50ba7521_fk_common_district_id" FOREIGN KEY ("district_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_order" ADD CONSTRAINT "order_order_user_id_7cf9bc2b_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_order" ADD CONSTRAINT "order_order_worker_id_ca5674c4_fk_account_user_id" FOREIGN KEY ("worker_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_ordercard" ADD CONSTRAINT "order_ordercard_card_id_95980dd6_fk_payment_card_id" FOREIGN KEY ("card_id") REFERENCES "payment_card"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_ordercard" ADD CONSTRAINT "order_ordercard_order_id_d0e4c542_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "order_order"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_ordercard" ADD CONSTRAINT "order_ordercard_success_receipt_id_85921a7d_fk_payment_p" FOREIGN KEY ("success_receipt_id") REFERENCES "payment_paycomreceipt"("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_orderproduct" ADD CONSTRAINT "order_orderproduct_order_id_18dae3b0_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "order_order"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_orderproduct" ADD CONSTRAINT "order_orderproduct_product_id_54ab3eb7_fk_products_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_orderproduct" ADD CONSTRAINT "order_orderproduct_suggested_to_id_3f92c665_fk_order_ord" FOREIGN KEY ("suggested_to_id") REFERENCES "order_orderproduct"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_orderproduct" ADD CONSTRAINT "order_orderproduct_unit_id_f5d5ff73_fk_product_unit_id" FOREIGN KEY ("unit_id") REFERENCES "product_unit"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "order_orderstatuslog" ADD CONSTRAINT "order_orderstatuslog_order_id_7ed142ed_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "order_order"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "payment_card" ADD CONSTRAINT "payment_card_card_range_id_60911aea_fk_payment_c" FOREIGN KEY ("card_range_id") REFERENCES "payment_cardnumberranges"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "payment_card" ADD CONSTRAINT "payment_card_user_id_47696591_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "payment_cardnumberranges" ADD CONSTRAINT "payment_cardnumberra_vendor_id_f02733df_fk_payment_v" FOREIGN KEY ("vendor_id") REFERENCES "payment_vendor"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "payment_paycomreceipt" ADD CONSTRAINT "payment_paycomreceipt_order_id_3f8f4cb5_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "order_order"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "payment_paycomreceipt" ADD CONSTRAINT "payment_paycomreceipt_user_card_id_52a7433f_fk_payment_card_id" FOREIGN KEY ("user_card_id") REFERENCES "payment_card"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "payment_vendor" ADD CONSTRAINT "payment_vendor_processing_id_618f223c_fk_payment_processing_id" FOREIGN KEY ("processing_id") REFERENCES "payment_processing"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_banner" ADD CONSTRAINT "product_banner_category_id_2d152ba6_fk_product_category_id" FOREIGN KEY ("category_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_category" ADD CONSTRAINT "product_category_parent_id_f6860923_fk_product_category_id" FOREIGN KEY ("parent_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_comment" ADD CONSTRAINT "product_comment_product_id_b32e96a2_fk_product_product_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_comment" ADD CONSTRAINT "product_comment_user_id_ac70fe86_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_manufacturer" ADD CONSTRAINT "product_manufacturer_warehouse_id_ae8b5e6e_fk_product_w" FOREIGN KEY ("warehouse_id") REFERENCES "product_warehouse"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_megasale_categories" ADD CONSTRAINT "product_megasale_cat_category_id_d8cf5e40_fk_product_c" FOREIGN KEY ("category_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_megasale_categories" ADD CONSTRAINT "product_megasale_cat_megasale_id_3d1721f7_fk_product_m" FOREIGN KEY ("megasale_id") REFERENCES "product_megasale"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_megasale_manufacturers" ADD CONSTRAINT "product_megasale_man_manufacturer_id_d47ea16a_fk_product_m" FOREIGN KEY ("manufacturer_id") REFERENCES "product_manufacturer"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_megasale_manufacturers" ADD CONSTRAINT "product_megasale_man_megasale_id_0fa2ec05_fk_product_m" FOREIGN KEY ("megasale_id") REFERENCES "product_megasale"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_megasale_products" ADD CONSTRAINT "product_megasale_pro_megasale_id_e37be448_fk_product_m" FOREIGN KEY ("megasale_id") REFERENCES "product_megasale"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_megasale_products" ADD CONSTRAINT "product_megasale_products_product_id_3d96bbdf_fk_products_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_productimage" ADD CONSTRAINT "product_productimage_product_id_544084bb_fk_product_product_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_productlikeduser" ADD CONSTRAINT "product_productlikeduser_product_id_9e28be73_fk_products_id" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_productlikeduser" ADD CONSTRAINT "product_productlikeduser_user_id_e2a5b210_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_productsystemchangehistory" ADD CONSTRAINT "product_productsyste_product_id_bf2d93c1_fk_products_" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_producttypeattribute" ADD CONSTRAINT "product_producttypea_category_id_f5448b13_fk_product_c" FOREIGN KEY ("category_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_producttypeattributecheckboxoption" ADD CONSTRAINT "product_producttypea_product_attr_id_8b421870_fk_product_p" FOREIGN KEY ("product_attr_id") REFERENCES "product_producttypeattribute"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_producttypeattributeselectoption" ADD CONSTRAINT "product_producttypea_product_attr_id_3ac312a8_fk_product_p" FOREIGN KEY ("product_attr_id") REFERENCES "product_producttypeattribute"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "product_warehouse" ADD CONSTRAINT "product_warehouse_district_id_b2b8cb0c_fk_common_district_id" FOREIGN KEY ("district_id") REFERENCES "common_district"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "product_product_manufacturer_id_4a7a0ae9_fk_product_m" FOREIGN KEY ("manufacturer_id") REFERENCES "product_manufacturer"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "product_product_product_group_id_b27f3dbd_fk_product_p" FOREIGN KEY ("product_group_id") REFERENCES "product_productgroup"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_active_megasale_id_d3abd1ab_fk_product_megasale_id" FOREIGN KEY ("active_megasale_id") REFERENCES "product_megasale"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_category_id_a7a3a156_fk_product_category_id" FOREIGN KEY ("category_id") REFERENCES "product_category"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_manufactured_country_id_e04597e6_fk_common_country_id" FOREIGN KEY ("manufactured_country_id") REFERENCES "common_country"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_targeted_audience_id_3e389171_fk_product_t" FOREIGN KEY ("targeted_audience_id") REFERENCES "product_targetedaudience"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_unit_id_4dcdbc75_fk_product_unit_id" FOREIGN KEY ("unit_id") REFERENCES "product_unit"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_warehouse_id_efa28730_fk_product_warehouse_id" FOREIGN KEY ("warehouse_id") REFERENCES "product_warehouse"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products_liked_by" ADD CONSTRAINT "product_product_like_product_id_48558e3a_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "products_liked_by" ADD CONSTRAINT "product_product_liked_by_user_id_7ce8eb14_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "account_user"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
