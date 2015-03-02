# Building Production Mesos Frameworks

**Date:** Monday, 2 March 2015

**Presenters:**

- Adam Bordelon
- Alex Rukletsov
- Connor Doyle

## Intro to Writing Frameworks

- The core dynamic
  - Receive resource offers
    - Make decisions (launch tasks, or decline)
  - Receive status updates
    - Update local view of the global state

- Tools at your disposal
  - The State abstraction
  - Status updates
  - Custom executors
  - Framework messages

## Framework Patterns

- Resource arithmetic

- Keeping track of task metadata

- Reporting intermediate results

- Keep a number of different node types up

- Gang scheduling

## API Overview

- Scheduler API

- Executor API

## All about resource allocation

- Arbitrary resource types
  - Custom isolators for non-standard resource types

- Mesos roles

- Static reservations

- Persistent resources

- Dynamic reservations

## Handling Failure

- Keeping your scheduler up
  - Consider running your scheduler with
    [Marathon](https://github.com/mesosphere/marathon)

- Surviving scheduler failover
  - Framework failover timeout

- Task checkpointing

- Task reconciliation
  - Recommended [algorithm](http://mesos.apache.org/documentation/latest/reconciliation/)

- Task health checks

## Framework Security

- Authentication with the Mesos master

- Setting up access control lists

- SSL: master and slave, master and framework

## DCOS Integration Preview

- The Mesosphere [Universe](https://github.com/mesosphere/universe) Repository

- Integration with the DCOS CLI

## Mesos 1.0 (HTTP) API Preview

- The /events endpoint
  - Schedulers POST registration data here
  - Expected to keep a persistent connection open
  - Replaces scheduler callback methods
  - Chunked-Transfer encoding, one chunk per update

- The /call endpoint
  - Replaces scheduler driver methods

## Troubleshooting

