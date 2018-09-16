import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import page from '@/views/Page'
import particulars from '@/views/Particulars'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/page',
      name: 'page',
      component: page
    },
    {
      path: '/particulars/:id',
      name: 'particulars',
      component: particulars
    }
  ]
})
