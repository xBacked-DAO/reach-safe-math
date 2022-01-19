'reach 0.1';
'use strict';

// Inspired by https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol
// Ensures Reach programs handle mathematical operations safely.
// The validator param should be an assume/require function

export const trySub = (a, b, validator) => {
  validator(a > b, 'Could not subtract a larger number from a smaller number');
  return a - b;
};

export const tryAdd = (a, b, validator) => {
  const c = a + b;
  validator(c > a, 'Could not add two numbers that will overflow');
  return c;
};

export const tryDiv = (a, b, validator) => {
  validator(b != 0, 'Could not divide by zero');
  return a / b;
};


export const tryMul = (a, b, validator) => {
  validator(a != 0, 'Could not multiply by zero');
  const c = a * b;
  validator(c / a == b, 'Could not multiply two numbers that will overflow');
  return c;
};

export const tryMod = (a, b, validator) => {
  validator(b != 0, 'Could not modulo by zero');
  return a % b;
}

