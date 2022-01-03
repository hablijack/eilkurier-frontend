export const state = () => ({
  list: [],
})

export const mutations = {
  ADD_ALERT(state, alert) {
    state.list.push(alert)
  },
  REMOVE_ALERT(state, alert) {
    const index = state.list.indexOf(alert)
    if (index > -1) {
      state.list.splice(index, 1)
    }
  },
}

export const actions = {
  add({ commit }, alert) {
    commit('ADD_ALERT', alert)
  },
}

export const getters = {
  get(state) {
    return state.alert
  },
}
