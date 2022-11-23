import Vue from 'vue'
import Vuex from 'vuex'
import startPage from './modules/startPage.js'
import navGoods from './modules/navGoods'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    tableData: []
  },
  modules: { startPage, navGoods }
})
