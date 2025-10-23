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
o.Module:	c.Module
o.Module:	C:h.swis
o.Module:	C:h.kernel
o.Module:	C:Global.h.HALDevice
o.Module:	C:Global.h.NewErrors
o.Module:	C:DebugLib.h.DebugLib
o.Module:	h.GPTDevice
o.Module:	h.BlockDevices
o.Module:	h.GUID
o.Module:	h.BlockDevPartGPTHdr
o.Module:	h.BlockDevices
o.Module:	h.GPT
o.Module:	h.GUID
o.Module:	h.devices
o.Module:	h.GPTDevice
o.devices:	c.devices
o.devices:	C:h.kernel
o.devices:	C:h.swis
o.devices:	h.BlockDevPartGPTHdr
o.devices:	h.devices
o.devices:	h.GPTDevice
o.devices:	h.BlockDevices
o.devices:	h.GUID
h.BlockDevPartGPTHdr:	cmhg.BlockDevPartGPTHdr
h.BlockDevPartGPTHdr:	VersionNum
h.BlockDevPartGPTHdr:	h.BlockDevices
o.GPT:	c.GPT
o.GPT:	h.GPT
o.GPT:	h.GUID
o.GPT:	h.CRC32
o.CRC32:	c.CRC32
o.CRC32:	h.CRC32
o.GUID:	c.GUID
o.GUID:	h.GUID
o.BlockDevPartGPTHdr:	cmhg.BlockDevPartGPTHdr
o.BlockDevPartGPTHdr:	VersionNum
o.BlockDevPartGPTHdr:	h.BlockDevices
