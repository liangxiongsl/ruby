set port=8003
start http://localhost:%port%
title linux&unix - %port%
mkdocs serve -a localhost:%port%
