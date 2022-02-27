## Version Overview

- `v0.1`: First version, referenced in the [ESWC Paper](https://doi.org/10.1007/978-3-030-77385-4_16)

- `v0.2`: Major redesign based on bachelor's thesis

- `v0.3` (WIP): Small changes based on [W3C Member Submission Draft](https://git.rwth-aachen.de/i5/factdag/reshare-w3c-member-submission)

## `v0.3` To-Dos

- [x] Implement breaking changes from W3C Member Submission Draft

  - [x] Add encoding to certificates, don't assume X.509/base64
  - [x] Add requested factID
  - [x] Add encoding to signatures, don't assume RSASSA-PSS/base64
  - [x] Other DTC contents

- [x] Replace IRIs by w3id IRIs

- [x] Possibly revise on resource descriptions

- [x] Declare term status as stable?

- [ ] Quality control and identification of potentially missing metadata based on [example ontology](https://w3id.org/example)
