const db = require('../db/index')

//父级导航分类
exports.navDataAssort = (req, res) => {
  const navData = req.query
  const sql = 'select catagoryId,catagoryName,catagoryPath from ming_hua_tang.catagory where dadCatagory=?'
  db.query(sql, navData.fatherId, (err, results) => {
    if (err) return res.ss(err)
    if (results.length === 0) return res.ss(navData.fatherName + '没有子级类别')
    res.send({
      status: 0,
      msg: navData.fatherName + '获取数据成功！',
      data: results
    })
  })
}
// 子级数据分类
exports.navChildAssort = (req, res) => {
  const catagory = req.query
  //获取当前子级商品总数
  const sql = 'select count(*) as count from ming_hua_tang.product where productCatagory=?'
  db.query(sql, catagory.catagoryId, (err, results) => {
    if (err) return res.ss(err)
    const goodsCount = results[0].count //商品总数
    // const sql = 'select * from ming_hua_tang.product where productCatagory=? order by productOrder desc'
    if (goodsCount >= catagory.maxAmount) {
      //商品总数大于最大额度
      const sql = 'select productName ,productImg ,productBlurb from ming_hua_tang.product where productCatagory=? order by productOrder desc limit 0,' + catagory.maxAmount
      db.query(sql, catagory.catagoryId, (err, results) => {
        if (err) return res.ss(err)
        res.send({
          status: 0,
          msg: catagory.catagoryName + '获取数据成功！',
          data: results,
          isOver: true
        })
      })
    } else {
      //商品总数大于最大额度
      const sql = 'select productName ,productImg ,productBlurb from ming_hua_tang.product where productCatagory=? order by productOrder desc'
      db.query(sql, catagory.catagoryId, (err, results) => {
        if (err) return res.ss(err)
        if (results.length === 0) return res.ss(catagory.catagoryName + '还没有商品！')
        let arr = []
        results.forEach(x => {
          // console.log()
          arr = x.productBlurb.split(',')
          x.productBlurb = arr
          // console.log(x.productBlurb)
        })
        // console.log(results[0])
        res.send({
          status: 0,
          msg: catagory.catagoryName + '获取数据成功！',
          data: results,
          isOver: false
        })
      })
    }
  })
}
exports.tempChange = (req, res) => {
  const navData = req.query
  const navAssort = []
  //【循环的是父级类别】
  const sql = 'select catagoryId,catagoryName,catagoryPath from ming_hua_tang.catagory where dadCatagory=?'
  db.query(sql, navData.fatherId, (err, results) => {
    if (err) return res.ss(err)
    const navAssort = results
    const sql = 'select count(*) as count from ming_hua_tang.product where productCatagory=?'
    //【循环的是子级数据】
    navAssort.forEach(x => {
      x.catagoryStyle = navData.style
      x.maxAmount = 4 * navData.styleInt
      x.product = []
    })

    console.log(navAssort)
    return res.send({
      status: 0,
      msg: '',
      data: navAssort
    })
  })
}

exports.xunhuan = (req, res) => {
  const arr = [2, 3, 4, 5]
  let str = ''
  arr.forEach(x => (str += x))
  res.ss(str)
  res.ss('ok')
}
