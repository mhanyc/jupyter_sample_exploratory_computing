WHEEL_VERSION ?= 0.31.0
VE ?= ./ve
PIP ?= $(VE)/bin/pip

create: 
	rm -rf $(VE)
	python3 -m venv $(VE)
	$(PIP) install wheel==$(WHEEL_VERSION)
	$(PIP) install --use-wheel --requirement requirements.txt

install_kernel:
	ipython kernel install --user --name=exploratory_computing_with_python
