PYTHON = python

ifndef VIRTUAL_ENV
    $(error "Please activate the virtual environment before running make.")
endif

all: install build

install:
	$(PYTHON) -m pip install setuptools

build:
	$(PYTHON) setup.py build_ext --inplace

clean:
	rm -rf build *.so *.c

