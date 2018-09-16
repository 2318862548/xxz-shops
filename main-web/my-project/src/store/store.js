import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)
const state = {
  id: 1
}
const mutations = {
  setId: (state, id) => {
    state.id = id
    localStorage.setItem('id', id)
  }
}
const actions = {}
const getters = {
  id: (state) => localStorage.getItem('id')
}
export default new Vuex.Store({
  state,
  getters,
  actions,
  mutations
})