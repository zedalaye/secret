#!/bin/bash

if [ -d test ]; then rm -rf test; fi

secret=${1:-Alice Dirty Secret}

mkdir -p test/alice
mkdir -p test/bob

cd test/alice
echo "Generate Alice keypair"
../../bin/generate
echo "Send Alice public key to Bob"
cp my.pub ../bob/your.pub

cd ../bob
echo "Generate Bob keypair"
../../bin/generate
echo "Send Bob public key to Alice"
cp my.pub ../alice/your.pub

cd ../alice
echo "Encode Alice's Secret"
../../bin/encode "${secret}"
echo "Send Alice's Secret to Bob"
cp secret ../bob

cd ../bob
echo "Bob Decodes Alice's Secret"
decoded_secret=$(../../bin/decode)
echo "Alice's Secret is \"${decoded_secret}\""
