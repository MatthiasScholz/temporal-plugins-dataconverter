# Temporal Dataconverter Plugin

This plugin is provides simple encryption of data at rest and 
was extracted from the excellent [Temporal Background Checks Demo](https://docs.temporal.io/docs/learning-paths/background-checks/)

This repository serves on my Temporal learning path.

## Tasks

- Migrate to Temporal [v1.16](https://github.com/temporalio/temporal/releases/tag/v1.16.0)
  - tctl implementation has been moved to a new [repository](https://github.com/temporalio/tctl)

## Usage

```
make plugin
make client
```

## Prerequisites

- make (GNU Make 3.81)
- go (1.18.1)

## References

- [Temporal](https://www.temporal.io)
- [Temporal Background Checks Demo](https://docs.temporal.io/docs/learning-paths/background-checks/)
- [Temporal Origin Source Code](https://github.com/temporalio/background-checks/tree/main/temporal)
