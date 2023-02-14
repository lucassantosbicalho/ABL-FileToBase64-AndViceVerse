// Adapted from https://docs.progress.com/pt-BR/bundle/abl-reference/page/BASE64-ENCODE-function.html

DEFINE VARIABLE encdmptr AS MEMPTR   NO-UNDO.
DEFINE VARIABLE encdlngc AS LONGCHAR NO-UNDO.
DEFINE VARIABLE mptr     AS MEMPTR   NO-UNDO.

// File to Base64
COPY-LOB FROM FILE "D:\Pictures\avatar.png" TO encdmptr.
encdlngc = BASE64-ENCODE(encdmptr). 

// Base64 to File
mptr = BASE64-DECODE(encdlngc).
COPY-LOB FROM mptr TO FILE "D:\Pictures\avatar_4GL.png".
