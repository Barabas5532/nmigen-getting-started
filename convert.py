from nmigen.back import verilog
from up_counter import *


top = UpCounter(25)
with open("up_counter.v", "w") as f:
    f.write(verilog.convert(top, ports=[top.en, top.ovf]))
