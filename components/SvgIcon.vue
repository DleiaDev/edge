<script setup lang="ts">
import SvgIcon from '../node_modules/@nuxtjs/svg-sprite/dist/runtime/components/svg-icon.vue';

interface Props {
  name: string;
}

const props = defineProps<Props>();
</script>

<template>
  <SvgIcon :class="`svg-icon svg-icon--${props.name}`" :name="props.name" />
</template>

<style lang="scss">
.svg-icon {
  color: inherit;
}
</style>
