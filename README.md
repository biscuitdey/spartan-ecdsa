# Spartan ZK for Baseline

Spartan-ecdsa (which to our knowledge) is the fastest open-source method to verify ECDSA (secp256k1) signatures in zero-knowledge. It can prove ECDSA group membership 10 times faster than [efficient-zk-ecdsa](https://github.com/personaelabs/efficient-zk-ecdsa), our previous implementation of fast ECDSA signature proving. Please refer to [this blog post](https://personaelabs.org/posts/spartan-ecdsa/) for further information.

## Pre-dependencies

1. Install circom-secq
```
git clone https://github.com/DanTehrani/circom-secq
cd circom-secq && cargo build --release && cargo install --path circom
```

2. Install [wasm-pack](https://rustwasm.github.io/wasm-pack/installer/)

## Build Spartan Wasm

This command needs to be run only once to build the Spartan wasm.

```
npm run build
```

## Compile your own circuits

- Add your circuits to the `baseline/circuits` folder
- Run the following command
  ```
  npm run compile:circuit <name_of_circuit> <number_of_public_inputs>
  ```
  The compiled artifacts would be available under `baseline/artifacts`. You can copy these artifacts to be used with your baseline protocol instance.
