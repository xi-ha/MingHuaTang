<template>
  <dir class="writeInfo_container">
    <div class="table">
      <div class="header d-flex justify-content-between align-items-center">
        <h4>收货人（含身材数据）信息</h4>
        <i class="el-icon-close" :style="{ fontSize: '18px' }" @click="write"></i>
      </div>
      <hr />
      <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm d-flex flex-column align-items-center">
        <el-form-item label="您的QQ号" prop="QQ">
          <el-input v-model="ruleForm.QQ"></el-input>
        </el-form-item>
        <el-form-item label="姓名">
          <el-input v-model="ruleForm.name"></el-input>
        </el-form-item>
        <el-form-item label="所在地区" prop="region">
          <el-input v-model="ruleForm.region"></el-input>
        </el-form-item>
        <el-form-item label="详细地址" prop="address">
          <el-input v-model="ruleForm.address"></el-input>
        </el-form-item>
        <el-form-item label="电话" prop="phone">
          <el-input v-model="ruleForm.phone"></el-input>
        </el-form-item>
        <el-form-item label="身高(cm)" prop="height">
          <el-input v-model="ruleForm.height"></el-input>
        </el-form-item>
        <el-form-item label="胸围(cm)可穿着内衣测量" prop="bust" label-width="224px">
          <el-input v-model="ruleForm.bust"></el-input>
        </el-form-item>
        <el-form-item label="腰围(cm)无需勒紧和收腹" prop="girth" label-width="224px">
          <el-input v-model="ruleForm.girth"></el-input>
        </el-form-item>
        <el-form-item label="颈围(cm)颈脖中段最细处净周长" prop="Neck" label-width="224px">
          <el-input v-model="ruleForm.Neck"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="sendTable">确定</el-button>
          <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
      </el-form>
    </div>
  </dir>
</template>

<script>
export default {
  name: 'WriteInfo',
  data() {
    return {
      i: parseInt(this.$route.query.i),
      temp: this.$store.state.tableData[this.i],
      // 表单数据
      ruleForm: this.$store.state.tableData[0]
        ? this.$store.state.tableData[0]
        : {
            QQ: '',
            name: '',
            region: '',
            address: '',
            phone: '',
            height: '',
            bust: '',
            girth: '',
            Neck: ''
          },
      // 表单提示数据
      rules: {
        QQ: [{ required: true, message: '请输入您的QQ号' }],
        region: [{ required: true, message: 'XX省XX市XX区' }],
        address: [{ required: true, message: '请输入详细地址' }],
        phone: [{ required: true, message: '请输入电话号码' }],
        height: [{ required: true, message: '请输入身高' }],
        bust: [{ required: true, message: '请输入胸围' }],
        girth: [{ required: true, message: '请输入腰围' }],
        Neck: [{ required: true, message: '请输入颈围' }]
      }
    }
  },
  methods: {
    write() {
      this.$router.back()
    },
    // 确定按钮事件
    sendTable() {
      const flag = this.$store.state.tableData.findIndex((x, index) => index === this.i)
      // 如果flag为-1说明tableData数组中不存在当前收货信息，为数组添加收货信息
      // 如果flag不为-1说明tableData数组中存在当前收货信息，不为数组添加收货信息
      if (flag === -1) {
        this.$store.state.tableData.push(this.ruleForm)
      }
      this.$router.back()
    },
    // 重置按钮事件
    resetForm(formName) {
      this.$refs[formName].resetFields()
    }
  },
  mounted() {
    // console.log(this.$store.state.tableData[this.i])
    // console.log(this.temp)
  }
}
</script>

<style lang="less" scopep>
.writeInfo_container {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 999;
  .table {
    position: absolute;
    width: 890px;
    height: 690px;
    top: 0;
    left: 50%;
    transform: translate(-50%, 0);
    background-color: #ffffff;
    border-radius: 5px;
    overflow: auto;
    .header {
      margin: 20px;
      h4 {
        font-size: 18px;
        font-weight: 400;
        color: #636363;
        margin: 0;
      }
    }
    .el-input__inner {
      width: 362px;
      // margin-right: -50px;
    }
    .el-form-item {
      margin-right: -111px;
    }
    .el-form-item:nth-child(7),
    .el-form-item:nth-child(8),
    .el-form-item:nth-child(9) {
      // border: 1px solid red;
      margin-right: 16px;
    }
    .el-form-item:last-child {
      margin-right: 16px;
    }
    .el-button {
      width: 108px;
      height: 35px;
      line-height: 0;
      color: #8c8c8c;
      border-radius: 0;
    }
    .el-button:first-child {
      border: 0;
      color: white;
      background-color: #2b2b2b;
      margin-right: 20px;
    }
  }
}
</style>
