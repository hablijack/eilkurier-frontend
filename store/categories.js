export const state = () => ({
  list: [],
})

export const mutations = {
  SET_CATEGORIES(state, categories) {
    state.list = categories
  },
}

export const actions = {
  set({ commit }, categories) {
    commit('SET_CATEGORIES', categories)
  },
}

export const getters = {
  get(state) {
    return state.categories
  },
}
