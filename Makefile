PROJECT = fcm
PROJECT_VERSION = $(shell head -n 1 relx.config | awk '{split($$0, a, "\""); print a[2]}')

app:: rebar.config

DEPS = jsx google_oauth

dep_jsx = git https://github.com/talentdeficit/jsx.git v3.0.0
dep_google_oauth = git https://github.com/pankajsoni19/google_oauth_erlang.git 1.0.0

include erlang.mk

ERLC_COMPILE_OPTS= +''
ERLC_OPTS += $(ERLC_COMPILE_OPTS)
TEST_ERLC_OPTS += $(ERLC_COMPILE_OPTS)
