<script setup lang="ts">
useHeadSafe({
  titleTemplate: (titleChunk) => (titleChunk ? `${titleChunk} - Invest` : 'Invest'),
});
</script>

<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
