<template>
  <div class="goodsDetails_container">
    <!-- <IndexTop></IndexTop> -->
    <index-top></index-top>
    <div class="goodsInfo wide d-flex">
      <div class="Img">
        <img src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgktWWmQYo2t7MjQMwwAw46Ac.jpg" :style="{ width: '700px' }" />
      </div>
      <div class="info">
        <h5>灵芝如意云暗花纱</h5>
        <hr />
        <el-form label-position="right" label-width="80px">
          <!-- <el-form-item v-for="item in " label="价格 : "> </el-form-item> -->

          <el-form-item label="价格 : ">
            <p :style="{ fontSize: '20px', color: '#2B2B2B', fontWeight: '700', fontFamily: 'Arial' }">￥3100.00</p>
          </el-form-item>
          <el-form-item label="选色 : ">
            <el-tooltip class="item" effect="dark" content="Top Center 提示文字" placement="top">
              <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAg4KaLmQYo5NWxnAUwoAY42x4.jpg" fit="fill"></el-image>
            </el-tooltip>
          </el-form-item>
          <el-form-item label="衣款 : ">
            <el-tooltip class="item" effect="dark" content="Top Center 提示文字" placement="top">
              <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAg_6z9yQUol6iQzwEwgAo4owY.jpg" fit="fill"></el-image>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="长款" placement="top">
              <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgxK79yQUo_OGAygYwgAo4owY.jpg" fit="fill"></el-image>
            </el-tooltip>
          </el-form-item>
          <el-form-item label="领型 : ">
            <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgha39yQUopaS_6QcwgAo4owY.jpg" fit="fill"></el-image>
            <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgnq79yQUo65Ph9AEwgAo4owY.jpg" fit="fill"></el-image>
            <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgha39yQUopaS_6QcwgAo4owY.jpg" fit="fill"></el-image>
            <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgnq79yQUo65Ph9AEwgAo4owY.jpg" fit="fill"></el-image>
            <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgha39yQUopaS_6QcwgAo4owY.jpg" fit="fill"></el-image>
            <el-image style="width: 40px; height: 40px" src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgnq79yQUo65Ph9AEwgAo4owY.jpg" fit="fill"></el-image>
          </el-form-item>
          <el-form-item label=""></el-form-item>
          <el-form-item label="购买数量 : ">
            <el-input-number v-model="num" controls-position="right" @change="handleChange" :min="1" :max="200" size="small" :style="{ width: '100px' }"></el-input-number>
          </el-form-item>
          <el-form-item label=""></el-form-item>
          <el-button :style="{ color: '#000', marginRight: '10px' }" :plain="true" @click="open">加入购物车</el-button>
          <el-button type="primary" icon="el-icon-shopping-cart-2" :style="{ backgroundColor: '#000' }" @click="buy">&nbsp;&nbsp;立即购买</el-button>
        </el-form>
      </div>
    </div>
    <div class="detailsShow wide">
      <div class="bigImg">
        <el-carousel indicator-position="outside" height="671px" :interval="5000">
          <el-carousel-item v-for="(item, index) in temp" :key="index">
            <img :src="item.img" alt="" />
            <span>{{ item.miaoshu }}</span>
          </el-carousel-item>
        </el-carousel>
      </div>
      <div class="smallImg">
        <span v-for="(item, index) in temp" :key="index">
          <img :src="item.img" alt="" />
        </span>
      </div>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexTop from '@/components/IndexTop.vue'
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'GoodsDetails',
  data() {
    return {
      tempSmall: [
        {
          infoName: '价格'
        },
        {
          infoName: '选色'
        }
      ],
      temp: [
        {
          img: 'https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgjN_GmQYovbXWnQEw1gY4gAo.jpg',
          miaoshu: '泥金·灵芝如意云暗花纱·直领披风 '
        },
        {
          img: 'https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgrNaWmQYo3rXnpgcw1gY4gAo.jpg',
          miaoshu: '泥金·灵芝如意云暗花纱·直领披风 '
        },
        {
          img: 'https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgrNaWmQYonM-2nQEwgAo41gY.jpg',
          miaoshu: '泥金·灵芝如意云暗花纱·直领披风 '
        }
      ],
      // 购买数量
      num: 1
    }
  },
  methods: {
    handleChange(value) {
      console.log(value)
    },
    // 加入购物车按钮
    open() {
      this.$alert('确定要加入购物车吗？', '提示', {
        confirmButtonText: '确定',
        callback: action => {
          this.$message({
            type: 'info',
            message: '加入购物车成功'
          })
        }
      })
      // 将商品信息（商品名、商品数量【num】）更新到vuex购物订单中
    },
    // 立即购买按钮
    buy() {
      // 跳转到下单界面
      this.$router.push('/buyProduct')
    }
  },
  components: {
    IndexTop,
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.goodsDetails_container {
  .goodsInfo {
    margin-top: 100px;
    margin-bottom: 100px;
    .info {
      padding: 10px 60px;
      h5 {
        font-weight: 700;
        color: #585858;
      }
      hr {
        margin: 0;
        width: 387px;
      }
      .el-form-item {
        height: 40px;
        margin-bottom: 0;
      }
      /deep/.el-input__inner {
        border-radius: 0;
      }
      .el-button {
        width: 140px;
        height: 40px;
        border: 1px solid #000;
        border-radius: 0;
      }
    }
  }
  .detailsShow {
    background-color: #ebebeb;
    height: 761px;
    margin-bottom: 50px;
    .bigImg {
      position: relative;
      width: 1170px;
      height: 671px;
      // background: red;
      margin-left: 15px;
      img {
        width: 1170px;
        height: 671px;
        object-fit: contain;
      }
      span {
        display: inline-block;
        position: absolute;
        left: 0;
        bottom: 0;
        height: 40px;
        width: 1170px;
        line-height: 40px;
        color: #fff;
        text-align: center;
        background: #303030;
      }
      /deep/.el-carousel__button {
        // border: 1px solid red;
        width: 60px;
        height: 60px;
      }
      /deep/.el-carousel__button {
        opacity: 0;
      }
      /deep/.el-carousel__indicator.is-active button {
        border: 1px solid #000;
        opacity: 0.3;
      }
    }
    .smallImg {
      height: 65px;
      text-align: center;
      // background-color: green;
      margin-top: 12px;
      padding-right: 9px;
      span {
        display: inline-block;
        width: 60px;
        height: 60px;
        // border: 1px solid blue;
        margin-left: 8px;
        img {
          width: 100%;
          height: 100%;
          object-fit: contain;
        }
      }
    }
  }
}
</style>
