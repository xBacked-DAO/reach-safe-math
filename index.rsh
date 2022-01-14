'reach 0.1';
'use strict';

// Inspired by https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol
// Ensures Reach programs handle mathematical operations safely.

export const trySub = (a, b) => {
  return a < b ? 0 : a - b;
};

export const tryAdd = (a, b) => {
  const c = a + b;
  return c < a ? 0 : c;
};

export const tryDiv = (a, b) => {
  return b == 0 ? 0 : a / b;
};

export const tryMul = (a, b) => {
  const c = a == 0 ? 0 : a * b;
  return c / a != b ? 0 : c;
};

export const tryMod = (a, b) => {
  return b == 0 ? 0 : a % b;
}

