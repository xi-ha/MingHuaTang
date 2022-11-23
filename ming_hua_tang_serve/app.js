//导入需要的模块
const express = require('express')
const cors = require('cors')
const router = require('./router/navIndex')

const app = express()
//解决跨域问题
app.use(cors())
//解析数据
app.use(express.json()) //post传过来的数据
//响应数据的中间件函数
app.use(function (req, res, next) {
  res.ss = function (err, status = 1) {
    res.send({
      status,
      msg: err instanceof Error ? err.message : err
    })
  }
  res.for = function (data) {
    console.log(data)
  }
  next()
})
app.use(router)
app.listen(8087, () => {
  console.log('服务器已经启动！')
})
