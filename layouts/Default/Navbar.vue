<script setup lang="ts">
//
</script>

<template>
  <nav class="topbar">
    <LayoutDefaultNavbarSearch />
    <div class="topbar__right">
      <LayoutDefaultNavbarNotifications />
      <div class="topbar__divider"></div>
      <LayoutDefaultNavbarProfile />
    </div>
  </nav>
</template>

<style lang="scss">
$height: 6em;

.topbar {
  height: 6em;
  padding: 1em 2em;
  display: flex;
  align-items: center;
  justify-content: space-between;
  @include themed() {
    border-bottom: 1px solid t('border');
  }

  // Search
  .form-group {
    width: 30em;
  }

  &__right {
    display: flex;
    align-items: center;
  }

  // Divider
  &__divider {
    align-self: stretch;
    width: 1px;
    margin: 0 2em;
    @include themed() {
      background-color: t('border');
    }
  }
}
</style>
