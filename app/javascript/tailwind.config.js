const colors = require('tailwindcss/colors')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        rose: '#e8b4b8',
        concrete: '#47484a',
        maroon: '#361b28',
        coffee: {
          default: '#67595e',
          light: '#a49393',
        },
      },
      fontFamily: {
        'custom': ['Annie Use Your Telescope'],
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}