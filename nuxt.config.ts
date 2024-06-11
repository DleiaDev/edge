// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ['@nuxt/eslint', '@nuxtjs/color-mode', '@nuxtjs/svg-sprite'],
  css: ['~/assets/scss/main.scss'],
  components: [
    {
      path: '~/layouts',
      prefix: 'Layout',
    },
    '~/components',
  ],
  vite: {
    css: {
      preprocessorOptions: {
        scss: {
          additionalData: '@use "~/assets/scss/_colors.scss" as *;',
        },
      },
    },
  },
  colorMode: {
    classSuffix: '',
    classPrefix: 'theme--',
  },
});
