const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
    // "./app/components/**/*.html.erb",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter", ...defaultTheme.fontFamily.sans],
        mono: ["Roboto Mono", ...defaultTheme.fontFamily.mono],
        display: ["Unica One", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [require("@tailwindcss/typography"), require("@tailwindcss/forms")],
};
