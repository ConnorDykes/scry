module.exports = {
  env: {
    es6: true,
    node: true,
  },
  parserOptions: {
    "ecmaVersion": 2018,
  },
  extends: [
    "eslint:recommended",
    "google",
  ],
  rules: {
    "no-restricted-globals": ["error", "name", "length"],
    "prefer-arrow-callback": "error",
    "quotes": 'off',
    'indent': 'off',
    "comma-dangle": 'off',
    'no-multi-spaces' : 'off',
    'key-spacing' : 'off',
    'no-trailing-spaces': 'off',
    'spaced-comment' : 'off',
    'max-len' : 'off',
    'padded-blocks' : 'off',
    'operator-linebreak': 'off'
  },
  overrides: [
    {
      files: ["**/*.spec.*"],
      env: {
        mocha: true,
      },
      rules: {},
    },
  ],
  globals: {},
};
