<template>
  <div class="productShow_container">
    <index-top></index-top>
    <search-info></search-info>
    <goods-show></goods-show>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexTop from '@/components/IndexTop.vue'
import SearchInfo from '@/components/SearchInfo'
import GoodsShow from '@/components/GoodsShow'
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'ProductShow',
  data() {
    return {
      fatherId: this.$route.query.fatherId
    }
  },
  components: {
    IndexTop,
    SearchInfo,
    GoodsShow,
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.productShow_containe {
}
</style>
