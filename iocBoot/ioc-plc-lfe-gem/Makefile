IOC_TOP = /reg/g/pcds/epics/ioc/common/ads-ioc/R0.6.1
IOC_INSTANCE_PATH := $(shell pwd)

# Set PRODUCTION_IOC to 1 to move from a testing to a production IOC:
PRODUCTION_IOC := 1

PROJECT_NAME := plc-lfe-gem
PROJECT_PATH := ../../plc-lfe-gem/plc-lfe-gem.tsproj
PLC := plc_lfe_gem

PYTMC_OPTS := 
PREFIX := PLC:LFE:GEM

include $(IOC_TOP)/iocBoot/templates/Makefile.base
