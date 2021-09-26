# reach-safe-math

This is a module built for the [Reach framework](https://reach.sh). It is heavily inspired by the work [OpenZepplin has done in the `SafeMath.sol` util](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol).

## Usage

[Reach Documentation](https://docs.reach.sh/ref-programs-module.html#%28part._ref-programs-import-package%29)

```
import * as safeMath from '@xBacked-DAO/reach-safe-math';
```

Alternatively
```
import { tryDiv } from '@xBacked-DAO/reach-safe-math';
```

Then, to install the packages so compilation works use the `install-pkgs` flag like below.

```
./reach compile program.rsh --install-pkgs
```

:warn: Note: this does not compile your program, run `./reach compile program.rsh` after the install and add `.reach` to your `.gitignore` file.
