CIRCUIT_NAME=$1
NUM_PUB_INPUTS=$2

BUILD_DIR=./baseline/artifacts/$CIRCUIT_NAME
mkdir -p $BUILD_DIR &&
circom ./baseline/circuits/$CIRCUIT_NAME.circom --r1cs --wasm --prime secq256k1 -o $BUILD_DIR &&

# Compile circom r1cs into binary
cargo run --release --bin gen_spartan_inst $BUILD_DIR/$CIRCUIT_NAME.r1cs $BUILD_DIR/$CIRCUIT_NAME.circuit $NUM_PUB_INPUTS &&


