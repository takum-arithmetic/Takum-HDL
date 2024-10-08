# See LICENSE file for copyright and license details
# Takum-HDL - takum VHDL implementation
.POSIX:
.SUFFIXES:

include config.mk

RTL =\
	rtl/decoder/predecoder\
	rtl/decoder/decoder_linear\
	rtl/decoder/decoder_logarithmic\
	rtl/encoder/postencoder\
	rtl/encoder/encoder_linear\
	rtl/encoder/encoder_logarithmic\

SIMULATION =\
	simulation/decoder/common_decoder_tb\
	simulation/encoder/common_encoder_tb\

all:

format:
	$(VSG) --fix --configuration .vsg-format.yaml --filename $(RTL:=.vhd) $(SIMULATION:=.vhd)
