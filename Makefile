.PHONY: all clean prog
all: up_counter.v up_counter.vcd prog

up_counter.v: up_counter.py convert.py
	python3 convert.py

up_counter.vcd: up_counter.py test.py
	python3 test.py

prog: icebreaker_blinky.py
	python3 icebreaker_blinky.py

clean:
	rm -rf build
	rm *.v
