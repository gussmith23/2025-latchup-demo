# Lakeroad and Churchroad Latch-Up 2025 Demo

This demo is meant to demonstrate the current state of the Lakeroad and Churchroad projects.

## Preliminary: Lakeroad and Churchroad

**Lakeroad** is a technology mapping subroutine which can be used to map designs to a *small number* of DSPs. Lakeroad relies on SMT solvers under the hood, which notoriously have scaling issues.

**Churchroad** is a more general technology mapper and can handle larger designs than Lakeroad. Churchroad uses multiple calls to Lakeroad under the hood, and in the future, will also incorporate other technology mapping methods.

Lakeroad is currently more stable than Churchroad. Eventually, Churchroad will completely subsume Lakeroad.

## Introduction: What's the Issue?

Imagine you're building a hardware design targeting Xilinx UltraScale+ FPGAs. Your design includes the following hardware module:

```sv
TODO design
```

You'd like to map this module to the UltraScale+ DSP:

![DSP48E2](assets/DSP48E2.png)

However, when you go to map this design using Vivado, you find that it uses more than just a single DSP. Inefficient!

## Lakeroad

Lakeroad is a technology mapper for programmable hardware primitives, meant more completely use all features of primitives like DSPs. 

To use Lakeroad, download a release from its releases page:
https://github.com/gussmith23/lakeroad/releases

Unzip the release and set this environment variable, which is used by scripts down the road:
```sh
export LAKEROAD_DIR=<path to extracted lakeroad folder>
```

Add Lakeroad to your path:
```sh
export PATH="$LAKEROAD_DIR/bin:$PATH"
```

Now, you should have Lakeroad available for use:
```sh
which lakeroad
lakeroad --help
```

### Using Lakeroad from the Command Line

To map our design using Lakeroad, 

### Using Lakeroad via Yosys
