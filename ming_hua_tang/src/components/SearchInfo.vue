<template>
  <div class="searchInfo_container">
    <div class="condition wide d-flex justify-content-between align-items-center">
      <div class="d-flex justify-content-between">
        <p>当前条件:</p>
        <span>全部女士套装</span>
      </div>
      <div>
        <el-input size="mini" placeholder="当前条件下搜索" suffix-icon="el-icon-search" v-model="search" @keyup.enter.native="searchProduct"></el-input>
      </div>
    </div>
    <div class="array wide d-flex justify-content-between">
      <ul class="d-flex" id="temp">
        <li id="0" @click="arrayOption(0)" :style="{ backgroundColor: '#fff', color: '#000' }">价格</li>
        <!-- <li id="1" @click="arrayOption(1)">上架时间</li> -->
        <li id="2" @click="arrayOption(1)">名称</li>
        <li>
          <input type="text" placeholder="￥" /> - <input type="text" placeholder="￥" />&nbsp;&nbsp;&nbsp;
          <el-button type="info" size="mini" :style="{ backgroundColor: '#2B2B2B' }">确定</el-button>
        </li>
      </ul>
      <!-- <div class="d-flex">
        <i class="el-icon-arrow-left"></i>
        <span class="d-flex">
          <p style="color: red">1</p>
          /
          <p>1</p>
        </span>
        <i class="el-icon-arrow-right"></i>
      </div> -->
    </div>
  </div>
</template>

<script>
export default {
  name: 'SearchInfo',
  data() {
    return {
      search: '',
      minPrice: '',
      maxPrice: '',
      icon: 'bottom'
    }
  },
  methods: {
    arrayOption(index) {
      // console.log(event.isTrusted)
      this.flag = false
      const arr = document.getElementById('temp').children
      for (let i = 0; i < arr.length; i++) {
        arr[i].style.backgroundColor = 'transparent'
        arr[i].style.color = '#666'
      }
      arr[index].style.backgroundColor = '#fff'
      arr[index].style.color = '#000'
    },
    searchProduct() {
      this.$message('没有查找到商品信息！')
    }
  },
  created() {
    // this.arrayOption()
    // console.log(this.$router.options.routes)
  }
}
</script>

<style lang="less" scoped>
.searchInfo_container {
  padding: 100px 0;
  background-color: #ebebeb;
  .condition {
    color: #666666;
    font: 14px 微软雅黑;
    padding: 15px;
    p {
      margin: 8px 25px 0 0;
    }
    span {
      display: inline-block;
      width: 112px;
      height: 32px;
      line-height: 31px;
      text-align: center;
      border: 1px solid #cac7c7;
    }
    /deep/.el-input__inner {
      font-size: 12px;
      padding-left: 8px;
      background-color: #fff;
    }
    /deep/.el-input__icon {
      line-height: 30px;
      font-size: 19px;
    }
  }
  .showArrow {
    // background-color: #fff;
    display: block;
  }
  .array {
    height: 40px;
    line-height: 40px;
    font-size: 14px;
    color: #666;
    background-color: #f5f5f5;
    border: 1px solid #e0e0e0;
    ul {
      padding-left: 0;
    }
    ul li {
      // width: 76px;
      height: 40px;
      text-align: center;
      // border: 1px solid red;
      padding: 0 24px;
      cursor: pointer;
      i {
        margin-left: 2px;
        display: none;
      }
      input {
        position: relative;
        top: -2px;
        width: 60px;
        height: 27px;
        text-indent: 3px;
        font-size: 12px;
        border: 1px solid #d6d6d6;
        &:focus {
          outline: 1px solid skyblue;
        }
        cursor: auto;
      }
    }
    div {
      i {
        line-height: 40px;
        margin: 0 20px;
        cursor: pointer;
      }
    }
  }
}
</style>
