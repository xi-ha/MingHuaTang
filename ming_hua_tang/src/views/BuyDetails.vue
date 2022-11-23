<template>
  <div class="buyDetails_container">
    <div class="topImg"></div>
    <div class="details wide">
      <div class="header d-flex align-content-center">
        <span></span>
        <p :style="{ lineHeight: '19px' }">订单信息</p>
      </div>
      <hr />
      <ul class="orderInfo">
        <li class="d-flex">
          <p>订单编号:</p>
          <p>2022102942834</p>
        </li>
        <li class="d-flex">
          <p>订单状态:</p>
          <p>待付款</p>
          <p :style="{ marginLeft: '730px' }">配送方式: 顺丰陆运到付（到付运费）&nbsp;&nbsp;&nbsp;费用: ￥0.01</p>
        </li>
        <li class="d-flex">
          <p>支付方式:</p>
          <!-- <p>2022102942834</p> -->
        </li>
        <table>
          <thead>
            <tr>
              <th>银行转账</th>
              <th>对公支付</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td></td>
              <td>银行名称：中国农业银行</td>
            </tr>
            <tr>
              <td></td>
              <td>开户名：广州日月华堂服饰设计有限公司</td>
            </tr>
            <tr>
              <td></td>
              <td>银行账号：**************08356</td>
            </tr>
            <!-- <tr>
              <td></td>
              <td>给买家留言：请勿在客服确认订单之前汇款。</td>
            </tr> -->
          </tbody>
        </table>
        <li class="d-flex">
          <p>收货人 (<br />含身材数<br />据) 信息:</p>
          <p :style="{ marginLeft: '1020px', cursor: 'pointer' }" @mouseover="showMore" @mouseout="hideMore">更多&gt;&gt;</p>
          <span v-if="more">
            <i class="el-icon-caret-top"></i>
            <table>
              <tr>
                <td>电话:</td>
                <td>123123123&nbsp;&nbsp;&nbsp;</td>
              </tr>
              <tr>
                <td>身高(cm):</td>
                <td>160</td>
              </tr>
              <tr>
                <td>胸围(cm)可穿<br />着内衣测量:</td>
                <td>50</td>
              </tr>
              <tr>
                <td>腰围(cm)无需<br />勒紧和收腹:</td>
                <td>50</td>
              </tr>
              <tr>
                <td>颈围(cm)颈脖<br />中段最细处<br />净周长:</td>
                <td>50</td>
              </tr>
            </table>
          </span>
        </li>
        <table>
          <tr>
            <th>您的QQ号:</th>
            <th>123456789</th>
          </tr>
          <tr>
            <th>姓名:</th>
            <th>曾美丽</th>
          </tr>
          <tr>
            <th>地址:</th>
            <th>湖南省湘潭市雨湖区</th>
          </tr>
        </table>
        <!-- <li class="d-flex">
          <p>给卖家留言:</p>
          <p>2022102942834</p>
        </li> -->
      </ul>
      <div class="goodsInfo">
        <h5>购物清单</h5>
        <div class="info">
          <div class="infoTitle d-flex">
            <div>名称</div>
            <div>价格</div>
            <div>数量</div>
            <div>小计</div>
          </div>
          <div class="infoShow d-flex">
            <div class="d-flex">
              <img src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgut_GmQYojJeHtQYwgAo41gY.jpg" />
              <span>
                <h6>五谷丰登织金纱</h6>
                <p>墨绿</p>
              </span>
            </div>
            <div>￥2680.00</div>
            <div>1</div>
            <div>￥2680.00</div>
          </div>
        </div>
      </div>
      <div class="count d-flex flex-column align-items-end">
        <span class="d-flex">
          <h6>总计:</h6>
          <p>￥2680.00</p>
        </span>
        <span class="d-flex">
          <h6>运费:</h6>
          <p :style="{ marginLeft: '10px' }">￥0.01</p>
        </span>
        <span class="d-flex">
          <h5>订单总额:</h5>
          <p :style="{ color: '#2B2B2B', fontSize: '16px', fontWeight: '700' }">￥2680.01</p>
        </span>
        <span>
          <router-link to="/"><el-button>删除订单</el-button></router-link>
        </span>
      </div>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'BuyDetails',
  data() {
    return {
      // 鼠标移入更多显示信息
      more: false
    }
  },
  methods: {
    showMore() {
      // console.log('ok')
      this.more = true
    },
    hideMore() {
      this.more = false
    }
  },
  components: {
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.buyDetails_container {
  background-color: #ececec;
  .topImg {
    width: 100%;
    height: 298px;
    background: url('@/assets/top.png') no-repeat;
    margin-top: -132px;
  }
  .details {
    margin-bottom: 15px;
    overflow: hidden;
    background: #fff;
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
    hr {
      margin: 0;
      padding: 0;
    }
    .orderInfo {
      line-height: 32px;
      font-size: 13px;
      color: #2b2b2b;
      margin: 0;
      padding: 0;
      li {
        position: relative;
        background-color: #f5f5f5;
        margin: 5px 5px 15px;
      }
      p {
        margin: 0;
      }
      p:first-child {
        font-weight: 700;
        color: #666;
        margin: 0 10px 0 30px;
      }
      table {
        font-size: 13px;
        color: #8e8e8e;
        margin-left: 45px;
        th,
        td {
          padding-left: 10px;
        }
        th {
          font-weight: 400;
        }
        th:first-child {
          text-align: right;
        }
        td {
          line-height: 16px;
        }
      }
      span {
        display: inline-block;
        width: 220px;
        height: 261px;
        position: absolute;
        top: 50px;
        right: 5px;
        box-shadow: 3px 3px 10px 0 rgba(0, 0, 0, 0.3);
        background-color: #fff;
        padding: 10px;
        i {
          position: absolute;
          top: -20px;
          right: 45px;
          font-size: 30px;
          color: #d8d8d8;
        }
        table {
          margin-left: 1px;
          tr {
            background-color: #f5f5f5;
            border: 1px solid #fff;
          }
          td {
            line-height: 25px;
          }
          tr td:first-child {
            text-align: right;
          }
        }
      }
    }
    .goodsInfo {
      text-align: center;
      font-size: 13px;
      color: #666;
      h5 {
        height: 39px;
        line-height: 39px;
        background-color: #f5f5f5;
        border-top: 1px solid #cccccc;
        border-bottom: 1px solid #cccccc;
      }
      .info {
        margin-top: -10px;
        .infoTitle {
          div {
            width: 198px;
            height: 36px;
            line-height: 42px;
            color: #000;
            // background-color: #f8f8f8;
            border-bottom: 1px solid #cccccc;
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
            // text-align: center;
            color: #666666;
            background-color: #fff;
            border-bottom: 1px solid #cccccc;
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
      height: 167px;
      margin-top: 20px;
      h6,
      p,
      h5 {
        font-size: 13px;
        color: #8e8e8e;
      }
      p {
        line-height: 19px;
        margin: 0 0 16px 10px;
      }
      h5 {
        font-size: 14px;
        font-weight: 700;
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
}
</style>
