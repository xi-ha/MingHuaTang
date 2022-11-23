<template>
  <div class="regmember_container">
    <index-top></index-top>
    <div class="member wide">
      <div class="title d-flex">
        <span></span>
        <p :style="{ lineHeight: '19px' }">注册会员</p>
      </div>
      <div class="fromInfo">
        <el-form :inline="true" :model="user" :rules="rules" ref="ruleForm" class="demo-ruleForm">
          <el-form-item label="用户名称 :" prop="name">
            <el-input v-model="user.name" placeholder="请输入用户名"></el-input>
          </el-form-item>
          <el-form-item label="用户密码 :" prop="pwd">
            <el-input type="password" v-model="user.pwd" placeholder="请输入密码"></el-input>
          </el-form-item>
          <el-form-item label="真实姓名 :" prop="realname">
            <el-input v-model="user.realname" placeholder="请输入真实姓名"></el-input>
          </el-form-item>
        </el-form>
        <el-form :inline="true" :model="user" :rules="rules" ref="ruleForm" class="demo-ruleForm">
          <el-form-item label="电子邮件 :" prop="email">
            <el-input v-model="user.email" placeholder="请输入电子邮件"></el-input>
          </el-form-item>
          <el-form-item label="出生日期 :" prop="birth">
            <el-input v-model="user.birth" placeholder="请输入出生日期"></el-input>
          </el-form-item>
          <el-form-item label="用户性别 :" prop="sex">
            <el-input v-model="user.sex" placeholder="请输入用户姓名"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="danger" class="temp" @click="onSubmit">提交</el-button>
            <el-button type="info" @click="onReset">重置</el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>
    <index-foot></index-foot>
  </div>
</template>
<script>
import IndexTop from '@/components/IndexTop.vue'
import IndexFoot from '@/components/IndexFoot.vue'
export default {
  name: 'RegisterMember',
  data() {
    return {
      user: {
        name: '',
        pwd: '',
        realname: '',
        email: '',
        birth: '',
        sex: ''
      },
      rules: {
        name: [{ required: true }],
        pwd: [{ required: true }],
        realname: [{ required: true }],
        email: [{ required: true, message: '请输入电子邮件格式' }],
        birth: [{ required: true }],
        sex: [{ required: true }]
      }
    }
  },
  methods: {
    onSubmit() {
      this.$message('注册会员成功！！！')
    },
    onReset() {
      console.log('重置成功')
    }
  },
  components: {
    IndexTop,
    IndexFoot
  }
}
</script>
<style lang="less" scoped>
.regmember_container {
  .member {
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
    .fromInfo {
      margin-top: 57px;
    }
    .el-form {
      // border: 1px solid red;
      width: 993px;
      margin: 0 auto;
      .el-form-item {
        margin-right: 56px;
        .el-button {
          width: 105px;
          height: 37px;
          margin: 0 25px;
        }
        .temp {
          margin-left: 600px;
        }
      }
    }
  }
}
</style>
