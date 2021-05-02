from nmigen_boards.icebreaker import *
from led_blinker import *

ICEBreakerPlatform().build(LEDBlinker(), do_program=True)
