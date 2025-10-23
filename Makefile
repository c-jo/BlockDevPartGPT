# Makefile for BlockDevPartGPT

COMPONENT = BlockDevPartGPT
OBJS = Module devices GPT CRC32 GUID
RES_OBJ =

include CModule

CDFLAGS    += -DDEBUGLIB
DBG_LIBS   += ${NET5LIBS}

#CMHG = cmunge
#CMHGFLAGS = -32bit

c.main: h.BlockDevPartGPTHdr
c.devices: h.BlockDevPartGPTHdr

# Dynamic dependencies:
