<template>
  <div>
    <button @click="addLike(id)">LIKE</button>
    <button @click="disLike(id)">DISLIKE</button>
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id'],
  methods: {
    ...mapActions(['addLike', 'disLike'])
  }
}
</script>

<style>

</style>