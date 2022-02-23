<template>
  <div>
    <button v-if="is_like" @click="disLike(id)">DISLIKE</button>
    <button v-else @click="addLike(id)">LIKE</button>
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id', 'is_like'],
  methods: {
    ...mapActions(['addLike', 'disLike'])
  }
}
</script>

<style>

</style>