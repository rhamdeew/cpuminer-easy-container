## Cryptonight CPUMiner Easy container based on Ubuntu 16.04

Miner for Nicehash pool (Build CPU_XENONCAT).

### Usage:

Clone

```
git clone https://github.com/rhamdeew/cpuminer-easy-container
```

*edit Dockerfile, change pool and BTC wallet*


Build
```
docker build -t rhamdeew/cpuminer .
```
and run

```
docker run --rm rhamdeew/cpuminer
```
*Fast, but cannot stopped with Ctrl+С. Highly recommended for run in tmux/screen*

or

```
docker run --d rhamdeew/cpuminer
```
*Not recommended - run slow, need remove used containers*

### Options

You can limit container cpu usage with standart Docker options - **cpuset-cpus** and **cpu-shares**

**Example:**

Limit cpu cores

```
docker run --cpuset-cpus="0" -d rhamdeew/cpuminer
```

Limit cpu share with other containers

```
docker run --cpu-shares=512 -d rhamdeew/cpuminer
```
