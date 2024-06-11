<script setup lang="ts"></script>

<template>
  <aside class="sidebar">
    <div class="sidebar__top">
      <NuxtLink to="/">
        <Logo />
      </NuxtLink>
      <SvgIcon name="arrow-left-from-line" role="button" />
    </div>
    <nav class="sidebar__nav">
      <div class="sidebar__nav-group">
        <p class="sidebar__nav-group-text">General</p>
        <NuxtLink class="sidebar__link" to="/">
          <SvgIcon name="home" />
          Home
        </NuxtLink>
        <NuxtLink class="sidebar__link" to="/news">
          <SvgIcon name="newspaper" />
          News
        </NuxtLink>
      </div>
      <div class="sidebar__nav-div"></div>
      <div class="sidebar__nav-group">
        <p class="sidebar__nav-group-text">Support</p>
        <NuxtLink class="sidebar__link" to="/settings">
          <SvgIcon name="settings" />
          Settings
        </NuxtLink>
        <NuxtLink class="sidebar__link" to="/help">
          <SvgIcon name="help" />
          Help Center
        </NuxtLink>
      </div>
    </nav>
  </aside>
</template>

<style lang="scss">
$padding: 1.5em;
$logo-height: 6em;
$link-padding-left: 1em;

.sidebar {
  width: 20em;
  @include themed() {
    border-right: 1px solid t('border');
  }

  // Top
  &__top {
    height: $logo-height;
    padding: $padding;
    display: flex;
    align-items: center;
    justify-content: space-between;
    @include themed() {
      border-bottom: 1px solid t('border');
    }
    .logo {
      width: 9em;
    }
    .svg-icon {
      width: 1.6em;
      height: 1.6em;
      padding: 0.3em;
      border-radius: 0.25em;
      @include themed() {
        color: t('text--secondary');
        background-color: t('bg');
      }
    }
  }

  // Nav
  &__nav {
    padding: $padding;
    &-group {
      &-text {
        margin-top: 0;
        padding-left: $link-padding-left;
        @include themed() {
          color: t('text--secondary');
        }
      }
    }
    &-div {
      height: 1px;
      margin: 2em 0;
      @include themed() {
        background-color: t('border');
      }
    }
  }

  // Link
  &__link {
    font-size: 1.1em;
    display: flex;
    align-items: center;
    text-decoration: none;
    padding: 0.5em 1em;
    border-radius: 0.5em;
    margin-bottom: 0.5em;
    transition: 0.2s;
    font-weight: 600;
    @include themed() {
      color: t('text--secondary');
    }
    &.router-link-active {
      font-weight: 800;
    }
    &:hover,
    &.router-link-active {
      @include themed() {
        color: t('text--selected');
        background-color: t('bg--selected');
      }
    }
    .svg-icon {
      width: 1.4em;
      height: 1.4em;
      margin-right: 0.75em;
    }
  }
}
</style>
