const express = require('express')
const navIndex_handler = require('../router_handler/navIndex')

const router = express.Router()
//父级导航分类
router.get('/navDataAssort', navIndex_handler.navDataAssort)
// 子级数据分类
router.get('/navChildAssort', navIndex_handler.navChildAssort)

router.get('/tempChange', navIndex_handler.tempChange)

router.get('/xunhuan', navIndex_handler.xunhuan)
module.exports = router
