<template>
  <div class="selfCenter_container">
    <index-top></index-top>
    <div class="selfcent wide">
      <div class="title d-flex">
        <span></span>
        <p :style="{ lineHeight: '19px' }">个人中心</p>
      </div>
      <el-row :gutter="25">
        <el-col :span="12">
          <el-card shadow="always">
            <h5>账户管理</h5>
            <div class="account">
              <ul class="d-flex flex-wrap justify-content-between">
                <li>用户名称：xxxhhh</li>
                <li>用户密码：············</li>
                <li>真实姓名：·······</li>
                <li>电子邮箱：·······</li>
                <li>出生日期：·······</li>
                <li>用户性别：·······</li>
              </ul>
              <router-link to="/regMember">
                <el-button type="info">修改信息</el-button>
              </router-link>
            </div>
          </el-card>
        </el-col>
        <el-col :span="12">
          <el-card shadow="always">
            <h5>订单管理</h5>
            <div class="order">
              <div class="d-flex">
                <img src="https://13827006.s21i.faimallusr.com/2/ABUIABACGAAgut_GmQYojJeHtQYwgAo41gY.jpg" />
                <span>
                  <h6>五谷丰登织金纱</h6>
                  <p>墨绿</p>
                </span>
                <router-link to="/buyDetails"><i class="el-icon-thumb"></i></router-link>
                <i class="el-icon-delete" @click="del"></i>
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
      <el-button type="danger" @click="open">退出登录</el-button>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexTop from '@/components/IndexTop.vue'
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'SelfCenter',
  methods: {
    open() {
      this.$confirm('确定要退出登录吗？', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      })
        .then(() => {
          this.$message({
            type: 'success',
            message: '退出成功!'
          })
        })
        .catch(() => {
          this.$message({
            type: 'info',
            message: '已取消退出'
          })
        })
    },
    del() {
      this.$confirm('确定要删除订单吗？', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      })
        .then(() => {
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
    IndexTop,
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.selfCenter_container {
  background-color: #eee;
  .selfcent {
    height: 540px;
    padding-top: 100px;
    .title {
      span {
        display: inline-block;
        width: 5px;
        height: 20px;
        background: #2b2b2b;
        margin-right: 6px;
      }
    }
    .el-row {
      .el-card {
        height: 300px;
        .account {
          width: 500px;
          margin-top: 40px;
          ul li {
            width: 230px;
            color: #8e8e8e;
            margin-bottom: 20px;
          }
          .el-button {
            margin: 0;
            margin-left: 430px;
          }
        }
        .order {
          div {
            border: 1px solid #dad9d9;
            padding: 8px;
            img {
              width: 60px;
              height: 60px;
              object-fit: fill;
              margin-right: 10px;
            }
            h6,
            p {
              text-align: left;
              font: 14px 微软雅黑;
              margin: 0;
            }
            h6,
            i {
              color: #666;
            }
            p {
              color: #aaa;
            }
            i {
              font-size: 20px;
              line-height: 60px;
              cursor: pointer;
            }
            .el-icon-thumb {
              margin-left: 297px;
              margin-right: 15px;
            }
          }
        }
      }
    }
    .el-button {
      margin-left: 1050px;
      margin-top: 30px;
    }
  }
}
</style>
