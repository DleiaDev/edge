<script setup lang="ts"></script>

<template>
  <div class="navbar-profile">
    <Avatar />
    <div class="navbar-profile__text">
      <div class="navbar-profile__text-primary">Gabe Lackmen</div>
      <div class="navbar-profile__text-secondary">Admin</div>
    </div>
    <SvgIcon name="dropdown" />
  </div>
</template>

<style lang="scss">
.navbar-profile {
  display: flex;

  // Avatar
  .avatar {
    width: 3em;
    height: 3em;
    margin-right: 0.5em;
    @include themed() {
      color: t('text--secondary');
    }
  }

  // Text
  &__text {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 0.1em 0;
    margin-right: 1.5em;
    &-primary {
      font-size: 1.14em;
      font-weight: 700;
    }
    &-secondary {
      font-size: 1.1em;
      @include themed() {
        color: t('text--secondary');
      }
    }
  }

  .svg-icon--dropdown {
    align-self: center;
    width: 1.5em;
    height: 1.5em;
  }
}
</style>
