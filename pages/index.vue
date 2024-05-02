<template>
  <div class="page page--dashboard">Let's check your stats today!</div>
</template>

<script setup lang="ts">
definePageMeta({
  colorMode: 'light',
});

useHeadSafe({
  title: 'Dashboard',
});
</script>

<style lang="scss">
.page--dashboard {
  @include themed() {
    color: t('primary');
  }
}
</style>
