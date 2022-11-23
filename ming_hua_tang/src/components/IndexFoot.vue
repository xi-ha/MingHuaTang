<template>
  <div class="idxFoot-container">
    <div class="wide">
      <div class="info">
        <ul class="d-flex justify-content-between">
          <li>
            <dl>
              <dt>定购须知</dt>
              <dd>下单方式</dd>
              <dd>支付方式</dd>
              <dd>产品须知</dd>
              <dd>售后服务</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>关于朙华堂</dt>
              <dd>品牌介绍</dd>
              <dd>企业信息</dd>
              <dd>生产团队</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>关注朙华堂</dt>
              <dd>
                <img src="//13827006.s21i.faimallusr.com/4/ABUIABAEGAAgsfLQlQYop6OTywUweDhs!60x60.png" />
                <a href="https://weibo.com/minghuatang" target="_blank">微博</a>
              </dd>
              <dd>
                <img src="//13827006.s21i.faimallusr.com/4/ABUIABAEGAAg3PLQlQYo4LHYlwIw3gE41wE!60x60.png" />
                <a href="https://space.bilibili.com/99802069" target="_blank">blibli</a>
              </dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>工作时间</dt>
              <dd>
                周一至周五：<br />
                10:30-17:30
              </dd>
              <dd>
                周六至周日：<br />
                14:00-17:00
              </dd>
            </dl>
          </li>
        </ul>
      </div>
      <div class="copy">
        ©2022 广州日月华堂服饰设计有限公司 版权所有 <br />
        手机版 | 粤ICP备2020122460号 | 本站支持
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'IndexFoot'
}
</script>

<style lang="less" scoped>
.idxFoot-container {
  height: 330px;
  color: #fff;
  background-color: #212121;
  .info {
    height: 256px;
    padding: 60px 20px 0 10px;
    // border: 1px solid #fff;
    ul li {
      font-size: 12px;
      color: #8b9b9b;
      dt {
        margin-bottom: 20px;
      }
      img {
        width: 21px;
        height: 18px;
        vertical-align: -4px;
        margin-right: 3px;
      }
      a {
        text-decoration: none;
        color: #666666;
        &:hover {
          color: #fff;
        }
      }
      hr {
        border: none;
        border-top: 1px dashed #fff;
      }
    }
  }
  .copy {
    height: 74px;
    text-align: center;
    font-size: 14px;
    color: #4d4d4d;
  }
}
</style>
