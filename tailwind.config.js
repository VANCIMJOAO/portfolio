module.exports = {
  content: ['./index.html'],
  darkMode: 'class', // Enable class-based dark mode
  theme: {
    extend: {
      fontFamily: {
        'naville': ['Naville', 'sans-serif'],
      },
      colors: {
        primary: {
          50: '#f3efe7',
          100: '#e6dccf',
          500: '#676059',
          900: '#2d2926',
        }
      },
      animation: {
        'rise-up': 'riseUp 0.8s ease forwards',
        'rise-up-cover': 'riseUpCover 1.6s ease forwards',
      },
      keyframes: {
        riseUp: {
          to: { opacity: 1, transform: 'translateY(0)' }
        },
        riseUpCover: {
          to: { transform: 'translateY(0)' }
        }
      }
    },
  },
  plugins: [],
}
