<template>
  <div class="regBefore_container">
    <index-top></index-top>
    <div class="regInfo wide">
      <div class="title d-flex">
        <span></span>
        <p :style="{ lineHeight: '19px' }">会员登录</p>
      </div>
      <form class="login-form">
        <!-- 输入用户名 -->
        <label for="username"><span id="red">*</span> 用户名</label>
        <input class="form-control ml-3" type="text" id="username" placeholder="请输入用户名" autocomplete="off" v-model="username" /><br />
        <!-- 输入密码 -->
        <label for="password" id="pwd_ml"><span id="red">*</span> 密码</label>
        <input class="form-control ml-3 mt-3" type="password" id="password" placeholder="请输入密码" v-model="password" /><br />
        <router-link to="/regMember">注册会员用户</router-link><br />
        <!-- 登录按钮 -->
        <button type="button" class="btn btn-danger" @click="onLogin">登录</button>
        <!-- 重置按钮 -->
        <button type="button" class="btn btn-secondary ml-3" @click="onReset">重置</button>
      </form>
    </div>
    <index-foot></index-foot>
  </div>
</template>

<script>
import IndexTop from '@/components/IndexTop.vue'
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'RegisterBefore',
  data() {
    return {
      username: '', // 用户名
      password: '' // 密码
    }
  },
  methods: {
    // 登录按钮事件
    onLogin() {
      this.$message('密码错误，请输入正确的用户密码！')
    },
    // 重置按钮
    onReset() {
      this.username = ''
      this.password = ''
    }
  },
  components: {
    IndexTop,
    IndexFoot
  }
}
</script>

<style lang="less" scoped>
.regBefore_container {
  background-color: #eee;
  .regInfo {
    height: 500px;
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
    .form-control {
      display: inline-block !important;
      width: 200px !important;
      margin-left: 30px;
    }
    .login-form {
      width: 350px;
      height: 220px;
      text-align: center;
      border-radius: 10px;
      box-shadow: 0 0 20px 10px rgba(228, 228, 228, 0.7);
      background-color: #eeeeee;
      margin: 0 auto;
      padding: 20px 0;
      a {
        margin-left: -220px;
      }
      #pwd_ml {
        margin-left: 15px;
      }
      #red {
        color: red;
      }
      .btn {
        width: 105px;
        height: 37px;
        margin: 20px 25px;
      }
    }
  }
}
</style>
