'reach 0.1';
'use strict';

// Inspired by https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol
// Ensures Reach programs handle mathematical operations safely.

export const tryDiv = (a, b) => {
  if (a == 0 || b == 0) {
    return 0;
  } else {
    return a / b;
  }
};

export const trySub = (a, b) => {
  if (a < b) {
    return 0;
  } else {
    return a - b;
  }
};

export const tryAdd = (a, b) => {
  const c = a + b;
  if (c < a) {
    return 0;
  } else {
    return c;
  }
};

export const tryMul = (a, b) => {
  if (a == 0) {
    return 0
  } else {
    const c = a * b;
    if (c / a != b) {
      return 0;
    } else {
      return c;
    }
  }
};

export const tryMod = (a, b) => {
  if (b == 0) {
    return 0;
  } else {
    return a % b;
  }
}

