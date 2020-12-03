echo %1
REM android [astcveryfast, astcfast, astcmedium, astcthorough, astcexhaustive]
node ../node_modules/texture-compressor/bin/texture-compressor.js -i %1 -t astc -c ASTC_8x8 -q astcmedium -o %1.astc.ktx

REM desktop  superfast,fast,normal,better,uber
node ../node_modules/texture-compressor/bin/texture-compressor.js -i %1 -o %1.dxt3.ktx -t s3tc -c DXT5 -q better

REM iOS pvrtcfastest,pvrtcfast,pvrtcnormal,pvrtchigh,pvrtcbest
node ../node_modules/texture-compressor/bin/texture-compressor.js -i %1 -o %1.pvrtc4BPPA.ktx -c PVRTC1_4 -t pvrtc -q pvrtcnormal