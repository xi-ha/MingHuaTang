import Vue from 'vue'
import VueRouter from 'vue-router'

import AppIndex from '@/views/AppIndex.vue'
import RegBefore from '@/views/RegisterBefore.vue'
import RegAfter from '@/views/RegisterAfter.vue'
import RegMember from '@/views/RegisterMember.vue'
import SelfCenter from '@/views/SelfCenter.vue'
import ProductShow from '@/views/ProductShow.vue'
import GoodsDetails from '@/views/GoodsDetails.vue'
import BuyProduct from '@/views/BuyProduct.vue'
import WriteInfo from '@/views/WriteInfo.vue'
import ShoppingCart from '@/views/ShoppingCart.vue'
import BuyDetails from '@/views/BuyDetails.vue'

// import IdxTopShow from '@/components/IdxTopShow.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/', redirect: '/index' },

  // { path: '/index', component: IdxTopShow },
  { path: '/index', component: AppIndex },
  { path: '/productShow', component: ProductShow },
  { path: '/regBefore', component: RegBefore },
  { path: '/regAfter', component: RegAfter },
  { path: '/regMember', component: RegMember },
  { path: '/selfCenter', component: SelfCenter },
  { path: '/goodsDetails', component: GoodsDetails },
  {
    path: '/buyProduct',
    component: BuyProduct,
    children: [{ path: 'writeInfo', component: WriteInfo }]
  },
  { path: '/shopCart', component: ShoppingCart },
  { path: '/buyDetails', component: BuyDetails }
  // { path: '/writeInfo', component: WriteInfo }
]

const router = new VueRouter({
  routes
})

export default router
