# SIP sandbox

This project provides a sandbox for testing SIP traffic use cases using [SIPp](https://github.com/SIPp/sipp).

It provides an easy way to setup traffic scenarios between a SIP User Agent Client (UAC) and a SIP User Agent Service (UAS).

It uses docker to build the SIPp image and docker-compose to setup the UAC and UAS sevices.

An example scenario to exchange SIP REGISTER traffic over UDP is provided.

## Pre-requisites

* Docker 19.03 or later
* Docker compose 1.24 or later

## Installation

* Clone the git repository

## Running the example

```
$ SIPP_UC=udp docker-compose up --build
```

The output screens of SIPp for the UAC and UAS will be shown in the stdout. 
In the example, a successful call will show equal number of REGISTER requests sent and received in the UAC screen, and an equal amount of REGISTER requests received and responses sent in the UAS screen.

## Creating a scenario

Refer to the [SIPp](https://github.com/SIPp/sipp) documentation on how to create a custom scenario.

### Directory structure

Create a directory for each use case under the repo parent directory.

```
<use case dir>
    /uac/entrypoint.sh
        /scenario/scenario.xml
    /uas/entrypoint.sh
        /scenario/scenario.xml
```

The entrypoint.sh script contains the command line to execute sipp for the UAC and UAS. The **scenario** directory contains the files needed to execute the scenario.


