<script setup lang="ts">
//
</script>

<template>
  <div class="layout layout--default">
    <LayoutDefaultSidebar />
    <div class="layout--default__right">
      <LayoutDefaultNavbar />
      <main class="layout--default__main">
        <slot />
      </main>
    </div>
  </div>
</template>

<style lang="scss">
.layout--default {
  display: flex;
  height: 100vh;
  max-height: 100vh;
  overflow: hidden;

  // Right
  &__right {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  // Main
  &__main {
    flex: 1;
    @include themed() {
      background-color: t('bg');
    }
  }
}
</style>
