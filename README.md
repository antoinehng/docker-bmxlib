# docker-bmxlib

_This is a docker container for [bmxlib](http://sourceforge.net/projects/bmxlib/ "bmxlib Sourceforge")_

bmx is a library and set of utilities to read and write broadcasting media files. It primarily supports the MXF file format.

### bmx is made up of 3 libraries:

- __libMXF:__
A low-level C library for reading and writing MXF files. Particular attention has been made to creating MXF files compatible with Avid software and P2 cameras. Several useful command line tools are included.
libMXF is part of the [BBC Ingex projetc](http://ingex.sourceforge.net/ "Ingex Sourceforge").

- __libMXF++:__
C++ wrapper for libMXF, provinding simpler and more manageable processing of header metadata.

- __bmx:__
C++ classes and utilities to read and write various flavours of MXF and WAVE.

You can get details about the built-in tools [here](http://sourceforge.net/p/bmxlib/home/Home/).
This is not a transcoding library (ffmpeg not included), it is use to analyse media, wrap or transwrap essences.
