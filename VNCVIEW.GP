##############################################################################
#
# PROJECT:	GEOS
# MODULE:       VNCView
# FILE:         VNCView.gp
#
# AUTHOR:       Marcus Groeber
#
# DESCRIPTION:  This file contains Geode definitions for the "VNCView"
#		application. This file is read by the Glue linker to
#		build this application.
#
##############################################################################

#
# Permanent name: This is required by Glue to set the permanent name
# and extension of the geode. The permanent name of a library is what
# goes in the imported library table of a client geode (along with the
# protocol number). It is also what Swat uses to name the patient.
#
name VNCView.app

#
# Long filename: this name can displayed by GeoManager.
#
longname "VNC Viewer"

#
# Token: The four-letter name is used by GeoManager to locate the
# icon for this application in the token database. The tokenid
# number corresponds to the manufacturer ID of the program's author
# for uniqueness of the token.
#
tokenchars "VNCV"
tokenid 16424

#
# Specify geode type: This geode is an application, and will have its
# own process (thread).
#
type    appl, process, single

# Estimated Heap usage for the application at runtime
# The number is somewhat arbitrary, because blocks will move around between
# the heap and the file system for the off-screen bitmap at run time.
heapspace 200k

#
# Specify class name for application thread. Messages sent to the application
# thread (aka "process" when specified as the output of a UI object) will be
# handled by the VNCViewProcessClass, which is defined in VNCView.goc.
#
class   VNCViewProcessClass

#
# Specify application object. This is the object that serves as the top-level
# UI object in the application. See VNCView.goc.
#
appobj  VNCViewApp

ifdef NOKIA
  export ModeTriggerClass
endif

#
# Libraries: list which libraries are used by the application.
#

ifdef NOKIA
  platform n9000c
  library foam
  library accpnt
else
  platform geos201
  exempt socket
endif

library geos
library	ui
library ansic
library text
library socket


#
# Resources: list all resource blocks which are used by the application whose
# allocation flags can't be inferred by Glue. Usually this is needed only for
# object blocks, fixed code resources, or data resources that are read-only.
# Standard discardable code resources do not need to be mentioned.
#
resource APPRESOURCE ui-object
resource INTERFACE ui-object

