/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.res.mjs"],
  theme: {
    extend: {},
    fontFamily: {
      'sans': ['Open Sans', 'sans-serif'],
      'serif': ['Raleway', 'serif'],
    },
    colors: {
      primary: {
        darkBlueIntro: 'hsl(217, 28%, 15%)',
        darkBlueMain: 'hsl(218, 28%, 13%)',
        darkBlueFooter: 'hsl(216, 53%, 9%)',
        darkBlueTestimonials: 'hsl(219, 30%, 18%)',
      },
      accent: {
        cyan: 'hsl(176, 68%, 64%)',
        blue: 'hsl(198, 60%, 50%)',
        lightRed: 'hsl(0, 100%, 63%)',
      },
      neutral: {
        white: 'hsl(0, 0%, 100%)',
      },
    }
  },
  plugins: [],
};
