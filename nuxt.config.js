import colors from 'vuetify/es5/util/colors'

export default {
  head: {
    title: 'Eilkurier - Nachrichten wie Sie sein sollten',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' },
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
  },

  plugins: [],

  css: [],

  components: true,

  buildModules: [
    '@nuxtjs/vuetify',
    '@nuxtjs/google-fonts'
  ],

  modules: [
    '@nuxtjs/axios',
    '@nuxtjs/pwa'
  ],

  vuetify: {
    customVariables: ['~/assets/variables.scss'],
    treeShake: true
  },

  axios: {},

  pwa: {
    manifest: {
      lang: 'de',
    },
  },

  build: {},

  watchers: {
    webpack: {
      ignored: '/node_modules/',
    },
  },

  googleFonts: {
    display: 'swap',
    families: {
      Brawler: true,
      "Playfair Display": true
    }
  }
}
