#include <$(SYSMAKEFILE)>

# -d:    Merge duplicate strings
# -Z:    suppress register reloads
# -2:    Generate 286 code
XCCOMFLAGS = -d -Z -2

XESPFLAGS += -D$(PRODUCT)
XGOCFLAGS  += -D$(PRODUCT)
XCCOMFLAGS += -D$(PRODUCT)
XLINKFLAGS += -D$(PRODUCT)

XLINKFLAGS += -N (c)\201999\20Marcus\20Groeber

