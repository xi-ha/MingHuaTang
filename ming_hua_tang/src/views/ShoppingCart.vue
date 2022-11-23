<template>
  <div class="shopCartping_container">
    <div class="topImg"></div>
    <div class="wide">
      <div class="header d-flex align-content-center">
        <span></span>
        <p :style="{ lineHeight: '19px' }">购物袋</p>
      </div>
      <ul>
        <li>
          <div class="info">
            <div class="infoTitle d-flex">
              <div>名称</div>
              <div>价格</div>
              <div>数量</div>
              <div>小计</div>
              <div>操作</div>
            </div>
            <div class="infoShow d-flex">
              <div class="d-flex">
                <input type="checkbox" :style="{ marginRight: '20px' }" />
                <img src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgut_GmQYojJeHtQYwgAo41gY.jpg" />
                <span>
                  <h6>五谷丰登织金纱</h6>
                  <p>墨绿</p>
                </span>
              </div>
              <div>￥2680.00</div>
              <div>1</div>
              <div :style="{ color: '#e4393c' }">￥2680.00</div>
              <div><i class="el-icon-delete"></i></div>
            </div>
          </div>
        </li>
      </ul>
      <input type="checkbox" />全选
      <div class="count d-flex flex-column align-items-end">
        <span class="d-flex">
          <h6>商品总额:</h6>
          <p>￥2680.00</p>
        </span>
        <span class="d-flex">
          <h6>应付总额:</h6>
          <h5 :style="{ color: '#e4393c' }">￥2680.00</h5>
        </span>
        <span class="d-flex">
          <p :style="{ fontSize: '12px', color: '#4b4b4b', lineHeight: '42px', marginRight: '44px', cursor: 'pointer' }">继续购物</p>
          <router-link to="/buyProduct"><el-button>结算订单</el-button></router-link>
        </span>
      </div>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'ShoppingCart',
  components: {
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.shopCartping_container {
  background-color: #ececec;
  .topImg {
    width: 100%;
    height: 298px;
    background: url('@/assets/top.png') no-repeat;
    margin-top: -132px;
  }
  .header {
    margin: 20px 0 2px 5px;
    span {
      display: inline-block;
      width: 5px;
      height: 20px;
      background: #2b2b2b;
      margin-right: 6px;
    }
  }
  ul {
    padding-left: 5px;
  }
  ul li {
    width: 1190px;
    color: #9a9a9a;
    font-size: 14px;
    border: 1px solid #dad9d9;
    margin: 20px 0;
    padding: 0;
    .info {
      .infoTitle {
        div {
          width: 198px;
          height: 42px;
          line-height: 42px;
          color: #000;
          background-color: #f8f8f8;
          padding-left: 90px;
        }
        div:first-child {
          width: 594px;
        }
      }
      .infoShow {
        div {
          width: 198px;
          height: 96px;
          line-height: 96px;
          text-align: center;
          color: #666666;
          background-color: #fff;
          i {
            font-size: 20px;
            margin-left: 24px;
            &:hover {
              cursor: pointer;
            }
          }
        }
        div:first-child {
          width: 594px;
          line-height: 0;
          padding: 18px;
          img {
            width: 60px;
            height: 60px;
            object-fit: fill;
            margin-right: 18px;
          }
          h6,
          p {
            text-align: left;
            font: 14px 微软雅黑;
            margin: 0;
          }
          h6 {
            color: #666;
          }
          p {
            color: #aaa;
          }
        }
      }
    }
  }
  .count {
    position: relative;
    top: 0;
    left: 650px;
    width: 500px;
    height: 155px;
    margin-top: 40px;
    h6,
    p {
      font-size: 14px;
      color: #333;
    }
    p,
    h5 {
      line-height: 19px;
      margin: 0 0 40px 70px;
    }
    h5 {
      font-size: 24px;
      color: #2b2b2b;
      margin: 0 0 25px 35px;
    }
    /deep/.el-button {
      width: 160px;
      height: 42px;
      font-size: 16px;
      font-weight: 700;
      color: #fff;
      background-color: #e4393c;
      border-radius: 0;
    }
  }
}
</style>
