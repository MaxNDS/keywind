declare var require: any;
import type { Config } from 'tailwindcss';
import colors from 'tailwindcss/colors';

export default {
  content: ['./theme/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  plugins: [require('@tailwindcss/forms')],
  theme: {
    extend: {
      fontFamily: {
        montserrat: ['Montserrat', 'sans-serif'],
        raleway: ['Raleway', 'sans-serif']
      },
      transitionDuration: {
        '2000': '2000ms'
      },
      colors: {
        primary: {
            '50': '#edfbfe',
            '100': '#d1f4fc',
            '200': '#a8e9f9',
            '300': '#6dd8f3',
            '400': '#2bbce6',
            '500': '#0e9ecc',
            '600': '#0f7fab',
            '700': '#13668b',
            '800': '#195471',
            '900': '#194660',
            '950': '#0a2d42',
            DEFAULT: '#2bbce6'
        },
        secondary: colors.slate,
        darkGrey: 'rgb(18,18,18)',
        provider: {
          apple: '#000000',
          bitbucket: '#0052CC',
          discord: '#5865F2',
          facebook: '#1877F2',
          github: '#181717',
          gitlab: '#FC6D26',
          google: '#4285F4',
          instagram: '#E4405F',
          linkedin: '#0A66C2',
          microsoft: '#5E5E5E',
          oidc: '#F78C40',
          openshift: '#EE0000',
          paypal: '#00457C',
          slack: '#4A154B',
          stackoverflow: '#F58025',
          twitter: '#1DA1F2',
        },
      },
    },
  },
} satisfies Config;
