<template>
  <div>
    <h1>記事一覧</h1>
    <ul v-for="article in getArticles" :key="article.id">
      <label>記事ID</label>
      <li>{{ article.id }}</li>
      <label>タイトル</label>
      <li>{{ article.title }}</li>
      <label>中身</label>
      <li>{{ article.body }}</li>
      <DeleteArticle :id="article.id"/>
      <AddLike :id="article.id"/>
    </ul>
  </div>
</template>

<script>
import DeleteArticle from "./DeleteArticle.vue";
import AddLike from "./AddLike.vue";
import { mapActions, mapGetters } from 'vuex';
export default {
  components: {
    DeleteArticle,
    AddLike
  },
  computed: {
    ...mapGetters(['getArticles']),
  },
  methods: { 
    ...mapActions(['fetchArticles']),
  },
  created () {
    this.fetchArticles()
  }
}
</script>

<style>

</style>