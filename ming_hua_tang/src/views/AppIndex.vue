<template>
  <div class="index_container">
    <!-- 头部栏 -->
    <index-top></index-top>
    <!-- 新品衣物轮播图 -->
    <div class="clothes">
      <el-carousel trigger="click" height="770px" arrow="never">
        <el-carousel-item v-for="item in clothes" :key="item">
          <h3 class="small"><img :src="item" /><!-- 点击图片，跳转至商品展示界面 --></h3>
        </el-carousel-item>
      </el-carousel>
    </div>
    <!-- 新品饰品轮播图 -->
    <div class="gizmos">
      <span class="demonstration">最新饰品</span>
      <el-carousel :interval="5000" height="500px" arrow="always">
        <el-carousel-item v-for="item in gizmos" :key="item">
          <h3><img :src="item" /><!-- 点击图片，跳转至商品展示界面 --></h3>
        </el-carousel-item>
        <el-button size="small">点击选配</el-button
        ><!-- 点击图片，跳转至商品展示界面 -->
      </el-carousel>
      <span class="demonstration">新品诚鉴</span>
    </div>
    <!-- 新品展示视频 -->
    <div class="video wide d-flex flex-column justify-content-between">
      <div class="d-flex justify-content-between">
        <div v-for="item in video" :key="item.sketch" class="d-flex">
          <video :src="item.url" width="338px" height="600px" loop muted autoplay></video>
          <h5>2022&nbsp;·&nbsp;{{ item.sketch }}</h5>
        </div>
      </div>
      <span class="demonstration">朙华堂故事</span>
    </div>
    <!-- 朙华堂故事 -->
    <div class="stroy wide d-flex" v-for="(item, index) in stroyConnt" :key="index">
      <div :class="item.place ? 'order-1' : 'order-2'" class="image">
        <el-card class="box-card">
          <img :src="item.imgUrl" />
        </el-card>
      </div>
      <div :class="item.place ? 'order-2' : 'order-1'" class="text">
        <div class="text_info" v-if="!item.imgText">
          <img :src="item.imgIcon" alt="" v-if="item.imgIcon" />
          <h5 :class="item.imgIcon ? 'change' : ''" v-if="item.connt">
            <p v-for="(connt, index) in item.connt" :key="index">{{ connt }}</p>
          </h5>
        </div>
        <div class="text_img" v-else>
          <img :src="item.imgText" />
        </div>
      </div>
    </div>
    <!-- 底部栏 -->
    <index-foot></index-foot>
  </div>
</template>
<script>
import IndexFoot from '@/components/IndexFoot'
import IndexTop from '@/components/IndexTop'
export default {
  name: 'AppIndex',
  data() {
    return {
      // 新品衣物轮播图
      clothes: this.$store.state.startPage.clothes,
      // 新品饰品轮播图
      gizmos: this.$store.state.startPage.gizmos,
      // 新品展示视频
      video: this.$store.state.startPage.video,
      // 朙华堂故事文本信息
      stroyConnt: this.$store.state.startPage.stroyConnt
    }
  },
  components: {
    IndexFoot,
    IndexTop
  }
}
</script>
<style lang="less" scoped>
.index_container {
  .clothes {
    margin-top: -120px;
    .el-carousel__item h3 {
      color: #475669;
      font-size: 14px;
      // opacity: 0.75;
      line-height: 770px;
      margin: 0;
      img {
        width: 100%;
        height: 770px;
      }
    }
  }
  .gizmos {
    padding: 60px 0;
    text-align: center;
    position: relative;
    .el-carousel {
      margin-bottom: 30px;
      .el-carousel__item h3 {
        width: 800px;
        height: 400px;
        line-height: 400px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: #475669;
        font-size: 18px;
        margin: 0;
        img {
          // width: 100%;
          height: 400px;
        }
      }
    }
    .demonstration {
      font-size: 18px;
      color: #6f6f6f;
    }
    .el-button {
      width: 112px;
      height: 36px;
      position: absolute;
      bottom: 37px;
      left: 50%;
      transform: translate(-50%, 0);
      color: #000;
      border-color: #000;
      border-radius: 0;
      z-index: 999;
      &:hover {
        background-color: rgba(0, 0, 0, 0.5);
        color: #fff;
      }
    }
  }
  .video {
    height: 760px;
    text-align: center;
    padding-bottom: 60px;
    div {
      height: 600px;
      overflow: hidden;
      video {
        border-right: 1px solid #000;
      }
      h5 {
        width: 40px;
        color: #6f6f6f;
        text-align: left;
        writing-mode: vertical-lr;
      }
    }
    .demonstration {
      font-size: 18px;
      color: #6f6f6f;
    }
  }
  .stroy {
    height: 300px;
    overflow: hidden;
    .image {
      .el-card {
        width: 750px;
        height: 300px;
        img {
          width: 750px;
          height: 300px;
        }
        /deep/.el-card__body {
          padding: 0;
        }
      }
    }
    .text {
      width: 450px;
      position: relative;
      text-align: center;
      padding: 0 5px;
      .text_info {
        img {
          width: 224px;
          height: 229px;
          margin-top: -53px;
        }
        h5 {
          width: 377px;
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          text-align: left;
          color: #6f6f6f;
          font-size: 14px;
          p {
            line-height: 24px;
          }
        }
        .change {
          bottom: 131px;
        }
      }
      .text_img {
        img {
          width: 450px;
          height: 299px;
        }
      }
    }
  }
}
</style>
