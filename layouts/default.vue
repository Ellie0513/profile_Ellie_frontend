<script setup lang="ts">
// layout
import LoadingPage from '@/components/layout/loading-page.vue';

import Header from '@/components/layout/default/header.vue';
import Footer from '@/components/layout/default/footer.vue';

const OpenGroup = defineAsyncComponent(() => import('@/components/open-group/index.vue'));
</script>

<template lang="pug">
#layout
  LoadingPage
  .inner-box
    header.header-area
      Header
    .page-area
      slot
    footer.footer-area
      Footer
    #layout-self-area
      ClientOnly
        OpenGroup
</template>

<style lang="scss">

// 佈局
#layout {
  @include row;
  max-width: 100vw;
  min-height: 100vh;
  justify-content: center;
  background-color: $bg;
  .inner-box {
    max-width: $pc;
    width: 100%;
    height: 100vh;
    position: relative;
    display: grid;
    grid-template-rows: auto 1fr auto auto;
    grid-template-areas:
      'header'
      'page'
      'footer'
      'self';
    background-color: #4E4E4E1A;
    .header-area {
      grid-area: header;
      // width: 100%;
      // position: fixed;
      position: sticky;
      top: 0;
      z-index: 1;
    }
    .page-area {
      grid-area: page;
      position: relative;
      z-index: 0;
    }
    .footer-area {
      grid-area: footer;
      position: relative;
      z-index: 0;
    }
    #layout-self-area {
      grid-area: self;
      position: sticky;
      bottom: 0;
      z-index: 2;
    }
  }
}

</style>
