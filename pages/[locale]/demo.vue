<script setup lang="ts">

// Demo 請填寫功能描述👈
const storeI18n = StoreI18n();
const linkList = [
  { path: '/', label: '回首頁' },
  { path: '/demo/font-demo', label: '文字' },
  { path: '/demo/api-demo', label: 'Api' },
  { path: '/demo/theme-demo', label: '主題色' },
  { path: '/demo/i18n-demo', label: 'I18n語系' },
  { path: '/demo/icon-demo', label: 'Icon' },
  { path: '/demo/el-demo', label: 'El plus' },
  { path: '/demo/params-demo/type-123/id-456', label: 'url 參數' },
  { path: '/demo/cookie-demo', label: 'Cookie Demo' },
  { path: '/demo/err-demo', label: 'Error' },
  { path: '/demo/pinia-demo', label: 'Pinia' },
  { path: '/demo/rwd-demo', label: 'RWD' },
  { path: '/demo/drawer-dialog-demo', label: 'Open Demo' },
  { path: '/demo/hls-demo', label: 'Hls影片串流' },
  // { path: '/sitemap.xml', label: 'SiteMap' },
  { path: '/demo/step-demo', label: 'Step Demo' },
  { path: '/demo/server-api-demo', label: 'Server Api' },
  { path: '/demo/driver-demo', label: 'Driver Step' },
  { path: '/demo/google-form', label: 'Google Form' },
  { path: '/demo/email-demo', label: 'Email Demo' },
  { path: '/demo/google-map', label: 'Google Map' },
  { path: '/demo/qr-code-demo', label: 'QR Code' },
  { path: '/demo/unocss-demo', label: 'UnoCSS' },
  { path: '/demo/db-demo', label: 'DB Demo' },
  { path: '/demo/ws-demo', label: 'WebSocket Demo' },
  { path: '/demo/web-worker-demo', label: 'WebWorker Demo' },
  { path: '/demo/img-demo', label: 'Img Demo' },
  { path: '/demo/leave-demo', label: 'Leave Demo' },
  { path: '/demo/animate-css-demo', label: 'Animate.css Demo' },
  { path: '/demo/wave-demo', label: 'Wave Demo' },
  { path: '/demo/provide-inject-demo', label: 'ProvideInject Demo' }
];
</script>

<template lang="pug">
#Demo
  .row-item
    div(v-for="item of linkList" :key="item.path")
      NuxtLink(:to="storeI18n.LocalePath(item.path)")
        ElButton {{ item.label }}
  div
    //- ClientOnly
    NuxtPage

</template>

<style lang="scss" scoped>
// 佈局 ----
#Demo {
  // TODO
  .row-item {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 4px;
  }
}

// 組件 ----
.test-box {
  background-color: #333;
  @include ratio-wh(200px, 400px, 1024px, true);
}
</style>
