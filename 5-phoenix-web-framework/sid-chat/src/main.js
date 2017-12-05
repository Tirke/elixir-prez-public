import Vue from 'vue'
import App from './App'
import router from './router'
import VueTimeago from 'vue-timeago'

Vue.use(VueTimeago, {
  name: 'timeago', // component name, `timeago` by default
  locale: 'fr-FR',
  locales: {
    'fr-FR': require('vue-timeago/locales/fr-FR.json')
  }
})

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
