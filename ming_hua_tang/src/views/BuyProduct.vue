<template>
  <div class="buyproduct_container">
    <div class="topImg"></div>
    <router-view></router-view>
    <div class="order wide">
      <div class="header d-flex align-content-center">
        <span></span>
        <p :style="{ lineHeight: '19px' }">订单结算</p>
      </div>
      <hr />
      <ul>
        <li>
          <div>
            <h5>收货人（含身材数据）信息</h5>
            <div class="d-flex flex-wrap">
              <div class="d-flex flex-wrap" v-if="ruleForm[0]">
                <div class="addressInfo" v-for="(item, index) in ruleForm" :key="index">
                  <div @click="choiceAddress(index)">
                    <div class="headerBg"></div>
                    <p><i class="el-icon-user"></i>{{ item.name }}</p>
                    <hr />
                    <p><i class="el-icon-location-outline"></i>{{ item.region }}&nbsp;{{ item.address }}</p>
                  </div>
                  <span>
                    <router-link
                      :to="{
                        path: '/buyProduct/writeInfo',
                        query: {
                          i: index
                        }
                      }"
                    >
                      <i class="el-icon-edit"></i>
                    </router-link>
                    <el-button type="text" @click="open(index)"><i class="el-icon-delete"></i></el-button>
                  </span>
                </div>
              </div>
              <div class="addAddress">
                <router-link to="/buyProduct/writeInfo">
                  <div>
                    <i class="el-icon-plus"></i>
                    <p>添加信息</p>
                  </div>
                </router-link>
              </div>
            </div>
          </div>
        </li>
        <li>
          <h5>配送方式</h5>
          <div class="send">
            <el-select v-model="value" placeholder="请选择">
              <el-option v-for="item in options" :key="item.value" :label="item.label" :value="item.value"> </el-option>
            </el-select>
          </div>
        </li>
        <li>
          <h5>支付方式</h5>
          <div class="pay">
            <div class="payWay">
              <div class="icon"></div>
              <p>对公支付</p>
              <div class="recomentIcon"></div>
              <span>
                <i class="el-icon-check"></i>
              </span>
            </div>
            <div class="payInfo">
              <p>银行名称：中国农业银行</p>
              <p>开户名：广州日月华堂服饰设计有限公司</p>
              <p>银行账号：**************08356</p>
              <p>给买家留言：请勿在客服确认订单之前汇款。</p>
            </div>
          </div>
          <div class="productInfo">
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
            <!-- <div class="leaveWord d-flex align-items-center">
              <p>给卖家留言</p>
              <el-input v-model="input.content" :placeholder="input.tip" maxlength="50"></el-input>
              <p :style="{ color: '#999' }">50字</p>
            </div> -->
          </div>
        </li>
      </ul>
      <div class="count d-flex flex-column align-items-end">
        <span class="d-flex">
          <h6>商品总额:</h6>
          <p>￥2680.00</p>
        </span>
        <span class="d-flex">
          <h6>运费:</h6>
          <p :style="{ marginLeft: '95px' }">￥0.01</p>
        </span>
        <span class="d-flex">
          <h6>应付总额:</h6>
          <h5>￥2680.00</h5>
        </span>
        <span>
          <router-link to="/buyDetails"><el-button>提交订单</el-button></router-link>
        </span>
      </div>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'BuyProduct',
  data() {
    return {
      // ruleForm: [{ name: '3', region: 'ddddddd', address: 'fffffffffff' }],
      ruleForm: this.$store.state.tableData,
      // select选择框
      options: [
        {
          value: '选项1',
          label: '顺丰陆运到付（到付运费）'
        }
      ],
      value: '顺丰陆运到付（到付运费）',
      // 留言输入框
      input: {
        content: '',
        tip: '选填: 对本次交易的说明(建议填写和卖家达成一致的说明)'
      }
    }
  },
  methods: {
    choiceAddress(index) {
      console.log('已选择当前地址:索引为' + index)
    },
    open(index) {
      this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      })
        .then(() => {
          // 删除当前收货信息
          this.ruleForm.splice(index, 1)
          this.$message({
            type: 'success',
            message: '删除成功!'
          })
        })
        .catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除'
          })
        })
    }
  },
  components: {
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.buyproduct_container {
  background-color: #ececec;
  .topImg {
    width: 100%;
    height: 298px;
    background: url('@/assets/top.png') no-repeat;
    margin-top: -132px;
  }
  .order {
    background: #fff;
    margin-bottom: 15px;
    overflow: hidden;
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
    ul,
    li,
    h5 {
      margin: 0;
      padding: 0;
      color: #9a9a9a;
    }
    ul {
      padding-left: 5px;
    }
    ul li {
      width: 1190px;
      h5 {
        color: #2b2b2b;
        margin: 28px 0;
      }
      .addressInfo {
        position: relative;
        width: 334px;
        height: 214px;
        border-radius: 8px;
        border: 1px solid #dad9d9;
        margin-right: 20px;
        margin-bottom: 20px;
        .headerBg {
          width: 100%;
          height: 12px;
          background: url('@/assets/精灵图.png') -138px 0 no-repeat;
        }
        hr {
          border-style: dashed;
          margin: 0 10px;
        }
        p {
          color: #333;
          margin: 15px 25px;
          i {
            color: #dad9d9;
            margin-right: 10px;
          }
        }
        span {
          position: absolute;
          bottom: 0;
          right: 0;
          a,
          .el-icon-delete {
            color: #9a9a9a;
          }
          i {
            margin: 10px;
            cursor: pointer;
          }
        }
      }
      .addAddress {
        position: relative;
        width: 334px;
        height: 214px;
        border-radius: 8px;
        border: 1px solid #dad9d9;
        a {
          color: #dad9d9;
        }
        &:hover {
          border-color: #2b2b2b;
          cursor: pointer;
        }
        div {
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          i {
            font-size: 70px;
          }
        }
      }
      .send {
        height: 90px;
        border: 1px solid #dad9d9;
        padding: 30px;
        /deep/.el-input__inner {
          width: 248px;
          height: 28px;
        }
        /deep/.el-input__icon {
          height: 34px;
        }
      }
      .pay {
        height: 227px;
        border: 1px solid #dad9d9;
        .payWay {
          position: relative;
          width: 127px;
          height: 44px;
          // text-align: center;
          border: 2px solid #000;
          margin: 27px 7px;
          span {
            display: inline-block;
            position: absolute;
            bottom: 0;
            right: -1px;
            width: 0;
            height: 0;
            line-height: 0px;
            // text-align: right;
            font-size: 2px;
            color: #fff;
            border-color: transparent #000 transparent transparent;
            border-style: solid;
            border-width: 16px 16px 0 0;
            i {
              position: absolute;
              top: -9px;
              right: -17px;
            }
          }
          .icon {
            display: inline-block;
            width: 30px;
            height: 30px;
            background: url('@/assets/pay.png') no-repeat;
            background-size: 100% 100%;
            margin: 5px 12px 0;
            vertical-align: -10px;
          }
          p {
            display: inline-block;
            font-size: 12px;
            color: #666666;
          }
          .recomentIcon {
            width: 17px;
            height: 24px;
            display: inline-block;
            position: absolute;
            margin-top: -1px;
            margin-left: 2px;
            background: url('@/assets/精灵图.png') -40px -301px no-repeat;
          }
        }
        .payInfo {
          width: 1128px;
          height: 94.4px;
          border-radius: 10px;
          background-color: #f7f7f7;
          margin: 0 30px;
          padding: 20px;
          p {
            color: #666666;
            font: 12px monospace;
            margin: 0;
          }
        }
      }
      .productInfo {
        border: 1px solid #dad9d9;
        margin: 20px 0;
        .info {
          .infoTitle {
            div {
              width: 198px;
              height: 42px;
              line-height: 42px;
              color: #000;
              font-size: 14px;
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
              // padding-left: 90px;
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
        .leaveWord {
          border-top: 1px solid #eaeaea;
          border-bottom: 1px solid #eaeaea;
          p {
            font-size: 14px;
            color: #666666;
            margin: 40px 50px;
          }
          /deep/.el-input {
            width: 714.8px;
          }
        }
      }
    }
    .count {
      position: relative;
      top: 0;
      left: 650px;
      width: 500px;
      margin-top: 40px;
      margin-bottom: 20px;
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
        background-color: #2b2b2b;
        border-radius: 0;
      }
    }
  }
}
</style>
