<template>
  <div class="show-container d-flex justify-content-between">
    <div v-for="(item, index) in navAssort" :key="index" class="assShow" ref="two" :class="index === 0 ? 'bord' : ''">
      <router-link :to="item.catagoryPath">
        <!-- 这里到时候全都跳转到一个组件中 -->
        <h5>{{ item.catagoryName }}&nbsp;&gt;</h5>
      </router-link>
      <!-- 判断使用图形展示商品，还是用方形展示商品 -->
      <!-- 如果对象中存在商品描述，说明用方形展示商品 -->
      <div class="yuan d-flex flex-wrap" v-if="item.catagoryStyle === 'yuan'">
        <div class="yuan_content d-flex" v-for="(product, index) in item.product" :key="index">
          <router-link :to="product.productImg">
            <!-- 这里到时候全都跳转到一个组件中 -->
            <div class="mag"><img :src="'https://13827006.s21i.faimallusr.com/2/ABUIABACGAAg' + product.productImg" /></div>
          </router-link>
          <h5>{{ product.productName }}</h5>
        </div>
      </div>
      <!-- <div class="fang d-flex flex-wrap justify-content-between" v-else> -->
      <div class="fang d-flex flex-wrap" v-else>
        <div class="fang_content d-flex" v-for="(product, index) in item.product" :key="index">
          <router-link :to="product.productImg">
            <img :src="'https://13827006.s21i.faimallusr.com/2/ABUIABACGAAg' + product.productImg" :title="product.productName" />
          </router-link>
          <span>
            <h5>{{ product.productName }}</h5>
            <p v-for="(blurb, index) in product.productBlurb" :key="index" :style="{ textAlign: 'left' }">{{ blurb }}</p>
          </span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'IdxTopShow',
  props: ['goods'],
  data() {
    return {
      navAssort: this.goods
      // navAssort: []
    }
  },
  methods: {},
  mounted() {
    console.log(this.goods)
  }
}
</script>

<style lang="less" scoped>
.show-container {
  width: 1270px;
  height: 550px;
  background-color: rgba(255, 255, 255, 0.9);
  .bord {
    border: 0;
  }
  .assShow {
    height: 500px;
    flex: 1;
    text-align: center;
    border-left: 1px solid #d1cfcf;
    padding: 15px;
    a {
      text-decoration: none;
      h5 {
        font-size: 15px;
        font-weight: 700;
        color: #4b4b4b;
        margin-bottom: 15px;
      }
    }
    .yuan,
    .fang {
      // height: 450px;
      // border: 1px solid green;
      img {
        width: 90px;
        height: 90px;
        margin-right: 5px;
        margin-bottom: 12px;
        object-fit: cover;
      }
      h5 {
        font-size: 14px;
        font-weight: 400;
        color: #666666;
        margin-bottom: 14px;
      }
      p {
        line-height: 2px;
        font-size: 12px;
        color: #666666;
      }
    }
    .yuan_content {
      margin-right: 15px;
      .mag {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        margin-bottom: 20px;
        overflow: hidden;
        img {
          transform: scale(1);
          transition: all 1s;
          &:hover {
            transform: scale(2);
          }
        }
      }
      h5 {
        font-size: 16px;
        writing-mode: vertical-lr;
        margin-left: 6px;
      }
    }
    .fang_content {
      width: 183px;
    }
  }
}
</style>
