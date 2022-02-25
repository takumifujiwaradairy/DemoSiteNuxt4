<template>
  <div>
    <button @click="addLike(id)">LIKE</button>
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id'],
  methods: {
    ...mapActions(['addLike'])
  }
}
</script>

<style>

</style>