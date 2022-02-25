import Vuex from 'vuex';
import axios from 'axios';

const url = '/api/articles'

const createStore = () => {
  return new Vuex.Store({
    state: () => ({
      articles: [
      ]
    }),
    getters: {
      getArticles: (state) => {
        return state.articles
      }
    },
    actions: {
      async fetchArticles({ commit }){
        await axios.get(url).then(response => {
          commit('setArticle', response.data)
        })
      },
      async postArticle({ commit }, article){
        await axios.post(url, article).then(response => {
          commit('addArticle', response.data)
        })
      },
      async deleteArticle({ commit }, id){
        await axios.delete(`${url}/${id}`).then(response => {
          commit('removeArticle', response.data)
        })
      }
    },
    mutations: {
      addArticle: (state, article) => state.articles.push(article),
      setArticle: (state, article) => state.articles = article,
      removeArticle: (state, id) => {
        const index = state.articles.findIndex((article) => article.id === id);
        state.articles.splice(index, 1);
      }
    }
  })
}

export default createStore;