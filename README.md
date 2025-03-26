# dkbench

[Benchmark::DKbench](https://metacpan.org/pod/Benchmark::DKbench) is a CPU benchmark suite implemented in Perl to be cross-platform. This Docker image wraps it in a ready-to-run Debian-based container so you can start benchmarking instantly.

The suite can run both in single and multi-threaded mode and calculate CPU scalability. It was created to evaluate performance on large cloud servers, so can scale to hundreds of CPU cores. The author uses it to compare the performance of the available cloud instance types (and [publishes the results](https://dev.to/dkechag/cloud-provider-comparison-2024-vm-performance-price-3h4l)).

## Quick Start

With Docker installed, you can run:

```
docker run -it --rm dkechag/dkbench
```

This drops you into a bash shell inside the container. From there, simply run:

```
dkbench
```

... to start the benchmark suite. Try `dkbench -h` to see various options.


## About

- OS Base: Debian Bookworm
- Benchmark Suite: [Benchmark::DKbench](https://metacpan.org/pod/Benchmark::DKbench)
- Docker Hub: https://hub.docker.com/r/dkechag/dkbench
- Source: [GitHub Repository](https://github.com/dkechag/dkbench-docker)
- Author: Dimitrios Kechagias (dkechag at cpan.org)
- Licence: MIT
