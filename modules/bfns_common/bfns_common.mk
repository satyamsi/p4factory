
###############################################################################
#
# Inclusive Makefile for the bfns_common module.
#
# Autogenerated 2014-11-19 18:23:24.283760
#
###############################################################################
bfns_common_BASEDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(bfns_common_BASEDIR)/module/make.mk
include $(bfns_common_BASEDIR)/module/src/make.mk
include $(bfns_common_BASEDIR)/module/auto/make.mk
include $(bfns_common_BASEDIR)/utest/_make.mk
