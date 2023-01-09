# foundry-verification-bug

Goal is to include two separate foundry workspaces in a single git repository. `core` is setup like any
other foundry repo, but `periphery` is special. `periphery/lib` contains a symbolic link to `core` and
custom remappings. In addition to the `foundry.toml` files inside `core` and `periphery`, there's an empty
one in the root directory so that when 3rd parties install the repo as a whole, foundry will search
recursively for `core` and `periphery` instead of giving up.

This works quite well for all standard commands, but there's some weirdness with Etherscan verification
inside of `periphery`. It works until `core/src` is _not_ a flat directory. Here I've included a useless
library, `src/libraries/Foo.sol`. When this file is imported in `core/MyContract.sol`, verification of
`periphery/MyHelper.sol` fails.

I realize this isn't a standard use-case, but any help would be appreciated.

## Deployment and verification works just fine in `core`

```
cd core
./deploy.sh
```

## Deployment and verification fails in `periphery`

```
cd periphery
./deploy.sh
```
