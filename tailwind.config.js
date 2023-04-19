/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**.html",
    "./**/index.html",
    "./output/**/*.html"
    ],
  theme: {
    fontFamily: {
      'serif': ['Zilla Slab', 'serif'],
    },
    extend: {
      colors: {
        'bright-blue' : '#4664cd',
        'darker-blue' : '#073cd7',
        'orangey' : '#d25f40',
        'headline-gray' : '#2b2a2e'     
      }
    },
  },
  plugins: [],
}
