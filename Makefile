

start:
	podman run --rm -it -v ${CURDIR}:/src klakegg/hugo:0.83.1 new site src

html:
	podman run --rm -it -v ${CURDIR}:/src klakegg/hugo:0.83.1

serve:
	podman run --rm -it -v ${CURDIR}:/src -p 1313:1313 klakegg/hugo:0.83.1 server