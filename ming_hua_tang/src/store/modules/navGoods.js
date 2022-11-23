// 布局模块（layout）是3
// 如果图片展示样式（style）是yuan，那么样式会数字化（styleInt）为3
// 如果图片展示样式（style）是fang，那么样式会数字化（styleInt）为2
// 布局模块（layout）是4
// 如果图片展示样式（style）是yuan，那么样式会数字化（styleInt）为2
// 如果图片展示样式（style）是fang，那么样式会数字化（styleInt）为1
// getNavChildAssort          , tempChange
import { getNavDataAssort, getNavChildAssort, tempChange } from '@/api/navGoods'
export default {
  state: {
    // 导航分类板块
    navDataAssort: [
      {
        fatherName: '首页',
        navPath: '/index'
      },
      {
        fatherName: '最新信息',
        navPath: ''
      },
      {
        fatherId: 'A', // 父类别编号
        fatherName: '所有单品', // 父类别名称
        navPath: '/productShow',
        // layout: 3, // 板块的子级类别
        style: 'yuan', // 板块的图片展示样式
        styleInt: 3 // 图片展示样式数字化
      },
      {
        fatherId: 'B',
        fatherName: '女士套装',
        navPath: '/productShow',
        // layout: 3,
        style: 'fang',
        styleInt: 2
      },
      {
        fatherId: 'C',
        fatherName: '男士套装',
        navPath: '/productShow',
        // layout: 3,
        style: 'fang',
        styleInt: 2
      },
      {
        fatherId: 'D',
        fatherName: '所有佩饰物',
        navPath: '/productShow',
        // layout: 4,
        style: 'yuan',
        styleInt: 2
      },
      {
        fatherName: '会员登录',
        navPath: '/regBefore'
      },
      {
        fatherName: '个人中心',
        navPath: '/selfCenter'
      }
    ]
  },
  mutations: {
    changeAssort(state) {
      state.navDataAssort.forEach(x => {
        // const catagoryLayout = x.layout
        if (x.styleInt) {
          const catagoryStyle = x.style
          const styleInt = x.styleInt
          getNavDataAssort(x).then(result => {
            x.navAssort = result.data.data
            x.navAssort.forEach(xx => {
              // xx.catagoryLayout = catagoryLayout // 板块布局 3还是4
              xx.catagoryStyle = catagoryStyle // 商品展示样式
              xx.maxAmount = 4 * styleInt // 最大额度 4是父类布局模块的高度/一个商品的布局高度取整  450/102=4
              xx.product = []
              xx.isOverAmount = false
              getNavChildAssort(xx).then(results => {
                // console.log(results.data)
                xx.product = results.data.status === 1 ? [] : results.data.data // 存储商品数据
                xx.isOverAmount = results.data.status === 1 ? false : results.data.isOver // 是否超过最大额度 false是没超过，true是超过
              })
            })
          })
        }
      })
    },
    tempChange(state) {
      // console.log(state.navDataAssort[3])
      // 循环父类别
      state.navDataAssort.forEach(x => {
        // console.log(x)
        if (x.style) {
          // const catagoryStyle = x.style
          // const styleInt = x.styleInt
          // 循环子类别
          tempChange(x).then(result => {
            x.navAssort = result.data.data
            // console.log(x)
            // console.log(result.data)
            // state.navDataAssort[3].product = result.data.data
          })
        }
      })
    }
  }
}
