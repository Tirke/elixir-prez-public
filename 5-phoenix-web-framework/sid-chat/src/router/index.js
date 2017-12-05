import Vue from 'vue'
import Router from 'vue-router'

const load = (component) => {
  return () => System.import(`@/components/${component}.vue`)
}

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Chat',
      component: load('Chat')
    }
  ]
})
