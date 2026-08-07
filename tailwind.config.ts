import type { Config } from 'tailwindcss'

export default <Config>{
  theme: {
    extend: {
      colors: {
        portrait: {
          ink: '#08304c',
          teal: '#084e72',
          body: '#2c2c2c',
          charcoal: '#353535',
          iron: '#585858',
          slate: '#797979',
          fog: '#c7c7c7',
          ash: '#dedede',
          mist: '#eeeeee',
          canvas: '#fefcf8',
        },
        pastel: {
          mint: '#d7ffe2',
          sky: '#e8f1ff',
          peach: '#ffebd6',
        },
        rainbow: {
          blue: '#3b82f6',
          magenta: '#ad46ff',
          red: '#ff4940',
          orange: '#ffa130',
          yellow: '#ffc837',
          green: '#00cc3d',
        },
      },
      fontFamily: {
        display: ['"Plus Jakarta Sans"', '"General Sans"', 'system-ui', 'sans-serif'],
        body: ['"Inter"', '"General Sans"', 'system-ui', 'sans-serif'],
      },
      borderRadius: {
        card: '24px',
        pill: '28px',
        chip: '9999px',
      },
    },
  },
}
