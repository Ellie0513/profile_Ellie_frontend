<script setup lang="ts">
// Header 請填寫功能描述👈
import { ArrowDown } from '@element-plus/icons-vue';

const linklist = [
  { name: i18n('headerHome'), link: '/about' },
  { name: i18n('headerWork'), link: '/news' },
  { name: i18n('aboutMe'), link: '/news' },
  { name: i18n('contacts'), link: '/news' }
];
const localesList = ['繁中', 'EN', '日文'];
</script>

<template lang="pug">
#Header
  .link-area(class="max-w-padding-1000px-10px")
    .left-area
      NuxtLink(to="/" alt="首頁" title="首頁") Logo
    .right-area(class="item-row-10px-end")
      NuxtLink(
        v-for="item of linklist" :key="item.name"
        :to="item.link" :alt="item.name" :title="item.name"
        class="header-text"
      )
        span(class="decorate-text") #
        span {{ i18n(item.name) }}
      ElDropdown(popper-class="header-dropdown")
        span.el-dropdown-link
          span {{ i18n('locales') }}
          //- span
            ElIcon(name="material-symbols-light:keyboard-arrow-down")
          ElIcon.el-icon--right
            arrow-down
        template(#dropdown)
          ElDropdownMenu
            ElDropdownItem(v-for="(item, index) of localesList" :key="index") {{ item }}

</template>

<style lang="scss" scoped>
// 佈局 ----
#Header {
  // background-color: #eee;
  .link-area {
    // @include max-w-padding(1000px, 20px);
    display: grid;
    grid-template-columns: auto 1fr;
    padding: 32px 0 8px;
  }
  .right-area {
    @include row(32px);
  }
}

// 組件 ----
.header-text {
  @include fs('content');
  @include row;
  justify-content: center;
  &:hover {
    color: $t-light;
  }
  color: $secondary;
}
.decorate-text {
  font-size: 14px;
  color: $primary;
}
:deep(.el-dropdown) {
  .el-dropdown-link {
    @include row(4px);
  }
}
</style>
<style>
.header-dropdown {
  background-color: var(--bg);
  .el-dropdown-menu {
    background-color: var(--bg) !important;
    .el-dropdown-menu__item {
      color: var(--secondary) !important;
      &:hover {
        color: var(--t-light) !important;
        background-color: unset;
      }
    }
  }
}
</style>
