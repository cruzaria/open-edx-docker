from .aws import *

update_module_store_settings(MODULESTORE, doc_store_settings=DOC_STORE_CONFIG)

MEDIA_ROOT = "/openedx/uploads/"
FEATURES['ENABLE_DISCUSSION_SERVICE'] = False

ALLOWED_HOSTS = [
    ENV_TOKENS.get('CMS_BASE')
]

# Don't rely on AWS for sending email
EMAIL_BACKEND = "django.core.mail.backends.console.EmailBackend"

# We need to activate dev_env for logging, otherwise rsyslog is required (but
# it is not available in docker).
LOGGING = get_logger_config(LOG_DIR,
                            logging_env=ENV_TOKENS['LOGGING_ENV'],
                            debug=False,
                            dev_env=True,
                            service_variant=SERVICE_VARIANT)
