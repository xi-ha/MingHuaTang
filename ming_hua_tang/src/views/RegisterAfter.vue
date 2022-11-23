<template>
  <div class="regAfter_container">
    <index-top></index-top>
    <div class="regInfo">
      <p>请先登录商城！！！</p>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexTop from '@/components/IndexTop.vue'
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'RegisterAfter',
  components: {
    IndexTop,
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.regAfter_container {
  font-size: 14px;
  text-align: center;
  color: #212121;
  background: #eee;
  overflow: hidden;
  .regInfo {
    height: 432px;
    margin-top: 100px;
  }
}
</style>
