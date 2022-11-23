<template>
  <div class="idxTop-container">
    <!-- <router-view></router-view> -->
    <div class="logo">
      <img src="../assets/logo.png" alt="" />
      <!-- <div class="search d-flex align-items-center">
        <el-input v-model="input"></el-input>
        <i class="el-icon-search" @click="search"></i>
      </div> -->
      <el-badge :value="goodsCount" class="item">
        <router-link to="/shopCart" target="_blank">
          <el-button size="small"> <i class="el-icon-shopping-cart-2" :style="{ marginRight: '8px' }"></i>购物车 </el-button>
        </router-link>
      </el-badge>
    </div>
    <div class="nav">
      <el-menu :default-active="$route.path" class="el-menu-demo" mode="horizontal" router @select="handleSelect" background-color="rgba(255,255,255,.1)" text-color="#fff">
        <div class="nav_name" v-for="(item, index) in navDataAssort" :key="index">
          <el-menu-item :index="item.navPath + ''" v-if="!item.styleInt">
            {{ item.fatherName }}
          </el-menu-item>
          <el-submenu :index="item.fatherName + ''" v-else>
            <template slot="title">
              <!-- target="_blank" -->
              <router-link
                :to="{
                  path: '/productShow',
                  query: {
                    fatherId: item.fatherId
                  }
                }"
              >
                {{ item.fatherName }}
              </router-link>
            </template>
            <el-menu-item>
              <idx-top-show :goods="item.navAssort"></idx-top-show>
            </el-menu-item>
          </el-submenu>
        </div>
      </el-menu>
    </div>
    <div class="backTop">
      <el-backtop :bottom="100">
        <div
          style="
             {
              height: 100%;
              width: 100%;
              background-color: #f2f5f6;
              box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
              text-align: center;
              line-height: 40px;
              color: #1989fa;
            }
          "
        >
          <!-- <i class="el-icon-caret-top"></i> -->
          <!-- <span>返回顶部</span> -->
          <el-tooltip class="item" effect="dark" content="返回顶部" placement="left">
            <el-button type="primary" icon="el-icon-caret-top" circle></el-button>
          </el-tooltip>
        </div>
      </el-backtop>
    </div>
  </div>
</template>

<script>
import IdxTopShow from '@/components/IdxTopShow.vue'
export default {
  name: 'IndexTop',
  data() {
    return {
      // element需要的值
      input: '', // logo图
      activeIndex: '1', // 导航
      // 导航数据
      navDataAssort: this.$store.state.navGoods.navDataAssort,
      // 购物车中的商品数量
      goodsCount: 0
    }
  },
  methods: {
    // ==================================
    // 字体颜色
    tC(event) {
      // console.log(event)
      event.currentTarget.className = 'textColor'
    },
    tempChange() {
      this.$store.commit('tempChange')
    },
    // ==================================
    // element需要的方法
    handleSelect(key, keyPath) {
      // console.log(key, keyPath)
    },
    // 获取服务器的数据
    getNavData() {
      this.$store.commit('changeAssort')
    },
    // 搜索
    search() {
      console.log('搜索内容')
    }
  },
  created() {
    // 在created生命周期中调用函数获取数据
    this.getNavData()
    // console.log(this.navDataAssort)
    // this.tempChange()
    // console.log(this.navDataAssort[3].navAssort[0])
    // console.log(this.navDataAssort[3].product.product)
  },
  components: {
    IdxTopShow
  }
}
</script>

<style lang="less" scoped>
.idxTop-container {
  height: 140px;
  position: relative;
  background: url('../assets/top.png');
  z-index: 999;
  .logo {
    img {
      width: 42px;
      height: 62px;
      position: absolute;
      top: 0;
      left: 50%;
      transform: translate(-50%, 0);
      margin-top: 5px;
    }
    .search {
      position: absolute;
      top: 17px;
      right: 159px;
      width: 147px;
      height: 28px;
      color: #666666;
      border: 0;
      border-bottom: 2px solid #fff;
      padding: 0 10px 0 0;
      .el-input {
        /deep/.el-input__inner {
          width: 120px;
          height: 25px;
          background-color: transparent;
          border: 0;
          padding: 0;
        }
      }
      i {
        font-size: 20px;
        color: #fff;
      }
    }
    .item {
      margin-top: 10px;
      margin-right: 40px;
    }
    .el-badge {
      position: absolute;
      top: 16px;
      right: 100px;
      .el-button {
        color: #000;
        background-color: #c2c2c2;
        border-top-color: #000;
      }
    }
  }
  .nav {
    width: 1200px;
    position: absolute;
    top: 80px;
    left: 50%;
    transform: translate(-50%, 0);
    .el-menu {
      border: 0;
      .nav_name {
        display: inline-block;
        a {
          display: inline-block;
          width: 100%;
          height: 100%;
          color: #fff;
          text-decoration: none;
          &:hover {
            color: #666;
          }
        }
        .textColor {
          color: #666;
        }
      }
      .is-active {
        color: #666666;
      }
      /deep/.el-submenu__title {
        background-color: transparent !important;
        &:hover {
          background-color: transparent !important;
        }
      }
      /deep/.el-icon-arrow-down:before {
        content: none;
      }
      .el-menu-item {
        background-color: transparent !important;
      }
      .el-menu-item,
      .el-submenu {
        border: 0;
        padding: 0 37px;
      }
    }
  }
  .backTop {
    // position:;
    z-index: 999;
    .el-backtop {
      div {
        background-color: transparent !important;
        box-shadow: none !important;
        .el-button {
          font-size: 20px !important;
        }
      }
    }
  }
}
</style>
