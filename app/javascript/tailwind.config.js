const colors = require('tailwindcss/colors')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        rose: '#e8b4b8',
        basic: '#f9f4f2',
        fantasy: '#faf7f7',
        cyan: '#609696',
        maroon: '#361b28',
        beige: '#d1cac7',
        coffee: {
          default: '#67595e',
          light: '#a49393',
        },
      },
      fontFamily: {
        'custom': ['Annie Use Your Telescope'],
        'roboto': ['Roboto']
      },
      fontSize: {
        '4/5xl': '2.5rem',
      },
      inset: {
        '55': '55%',
        '23': '23%',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}