<script setup lang="ts"></script>

<template>
  <SvgIcon name="bell" />
</template>

<style lang="scss" scoped>
.svg-icon {
  width: 2em;
  height: 2em;
  @include themed() {
    color: t('text--secondary');
  }
}
</style>
