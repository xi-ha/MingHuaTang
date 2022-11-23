<template>
  <div class="app-container">
    <router-view :key="$route.fullPath"></router-view>
  </div>
</template>

<script>
export default {
  name: 'MyApp'
}
</script>

<style lang="less" scoped>
.app-container {
}
</style>
