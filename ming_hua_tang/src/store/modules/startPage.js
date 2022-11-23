export default {
  state: {
    // 新品衣物轮播图
    clothes: [require('@/assets/images/shouye/clothes/111.jpg'), require('@/assets/images/shouye/clothes/222.jpg'), require('@/assets/images/shouye/clothes/333.jpg'), require('@/assets/images/shouye/clothes/444.jpg'), require('@/assets/images/shouye/clothes/555.jpg')],
    // 新品饰品轮播图
    gizmos: [require('@/assets/images/shouye/gizmos/111.jpg'), require('@/assets/images/shouye/gizmos/222.jpg'), require('@/assets/images/shouye/gizmos/333.jpg'), require('@/assets/images/shouye/gizmos/444.jpg'), require('@/assets/images/shouye/gizmos/555.jpg')],
    // 新品展示视频
    video: [
      {
        url: require('@/assets/images/shouye/video/111.mp4'),
        sketch: '女士缀补比甲  系列'
      },
      {
        url: require('@/assets/images/shouye/video/222.mp4'),
        sketch: '雕翱窃宝 · 织金纱襕裙'
      },
      {
        url: require('@/assets/images/shouye/video/333.mp4'),
        sketch: '灵芝如意云暗花纱 系列'
      }
    ],
    // 朙华堂故事文本信息
    stroyConnt: [
      {
        // 主图片
        imgUrl: require('@/assets/images/shouye/stroy/111.jpg'),
        // 副图片， 小图片
        imgIcon: require('@/assets/images/shouye/stroy/112.png'),
        // 判断文字是否显示在右边
        place: true, // 文字显示在右边
        // 自然段
        connt: {
          one: '明华堂（朙华堂）是国内最老的汉服品牌之一，由大学时期的钟毅于2007年在广州创立，15年来致力于汉服的设计、制作与推广。',
          two: '明华堂，其中的“明”取其光明之意、“华”代表中华、“堂”代表堂堂正正。'
          // three: '品牌坚持：“汉服，来自传承的魅力”'
        }
      },
      {
        imgUrl: require('@/assets/images/shouye/stroy/222.jpg'),
        place: false, // 文字显示在左边
        connt: {
          one: '朙华堂，依偎于珠江江畔的广州、背靠佛山；珠江三角洲的人历来以：开放包容、敢为人先、低调实干而著称；',
          two: '这驱使着我们以唯物主义眼光，从纷扰的中国历史中，梳理出中国服饰的发展脉络；坚持对中国历史文化传承逻辑的尊重，执着、恪守、创新、发扬 --',
          three: '续写从十七世纪至二十一世纪、从明代服饰到当代汉族民族服饰的道路。'
        }
      },
      {
        imgUrl: require('@/assets/images/shouye/stroy/333.jpg'),
        place: true,
        // 不显示文字，显示图片
        imgText: require('@/assets/images/shouye/stroy/444.jpg')
      }
    ]
  }
}
