# VNCVIEW - a VNC client for Geos

Version 1.0 by Marcus Groeber 1999

Note on compiling the source code:

This project has been designed to create geodes for multiple platforms, namely
Desktop Geos and the Nokia Communicator. Because of this, it requires the NT
versions of the Geos SDK tools.

- To compile for the Nokia platform, use the command "pmake NOKIA".
- To compile for the Desktop platform, use the command "pmake DESKTOP".

If you don't want to use this feature or run into any problems, you can remove
the DESKTOP and NOKIA subdirectories and modify LOCAL.MK by replacing
"$(PRODUCT)" with either "NOKIA" or "DESKTOP".
