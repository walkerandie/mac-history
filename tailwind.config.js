/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**.html",
    "./**/index.html",
    "./output/**/*.html"
    ],
  theme: {
    extend: {
      colors: {
        'bright-blue' : '#2c84fe',
        'darker-blue' : '#073cd7',
      }
    },
  },
  plugins: [],
}
