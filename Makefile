PROG_NAME=lists
PREV_VERSION=v0.1.0
VERSION=v0.1.0
LIB_DIR=$(VERSION)/lists
SRC_FILES=lists.c
CFLAGS=-g -Wall


compile:
	cd $(LIB_DIR) && gcc $(CFLAGS) -c lists.c -o lists.o

py-build:
	make compile
	ar -rc liblists.a $(LIB_DIR)/lists.o
	pipenv run python3.11 setup.py build_ext --inplace

fetch_lib:
	$(RM) -rf $(PREV_VERSION)
	mkdir $(VERSION)
	cd $(VERSION) && git clone https://github.com/joegasewicz/lists.git


clean:
	rm $(LIB_DIR)/*.o $(LIB_DIR)/*.a