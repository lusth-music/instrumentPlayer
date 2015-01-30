# Intrument Player #
Script to play songlib instument samples continuously

## Install Instructions ##
`git clone https://github.com/lusth-music/instrumentPlayer.git`

## Run Instructions ##
To play all of the instrument samples in songlib
`./playInstrument.sh /usr/local/share/samples/`

To play all of the samples for a single instrument
`./playInstrument.sh /usr/local/share/samples/[INSTRUMENT]`

To play all of the samples for a pack of a single instrument
`./playInstrument.sh /usr/local/share/samples/[INSTRUMENT]/[pack]_*`

## Dependancies ##
* Bash
* Songlib
* SoX = The Swiss Army knife of sound processing programs