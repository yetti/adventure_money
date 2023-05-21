module.exports = {
  syntax: 'postcss-scss',
  plugins: [
    require('postcss-import'),
    require('@tailwindcss/nesting'),
    require('tailwindcss'),
    require('autoprefixer'),
    require('postcss-flexbugs-fixes'),
    require('@csstools/postcss-sass'),
    require('postcss-strip-inline-comments'),
  ],
}
