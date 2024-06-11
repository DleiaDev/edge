<script setup lang="ts">
interface Props {
  label?: string;
  icon?: string;
  placeholder?: string;
}

const props = defineProps<Props>();

// Refs
const InputRef = ref<HTMLInputElement | null>(null);

const focus = () => {
  if (!InputRef.value) return;
  InputRef.value.focus();
};

defineExpose({
  focus,
});
</script>

<template>
  <div class="form-group">
    <!-- Label -->
    <label v-if="label" class="form-group__label">
      {{ props.label }}
    </label>

    <div class="form-group__container">
      <!-- Icon -->
      <SvgIcon v-if="props.icon" class="form-group__icon" :name="props.icon" />

      <!-- Input -->
      <input ref="InputRef" class="form-group__input" type="text" :placeholder="props.placeholder" />

      <!-- After -->
      <slot name="after" />
    </div>
  </div>
</template>

<style lang="scss">
.form-group {
  // Label
  &__label {
    margin-bottom: 0.5em;
    display: block;
    @include themed() {
      color: t('text--primary');
    }
  }

  // Container
  &__container {
    width: 100%;
    position: relative;
  }

  // Icon
  &__icon {
    transition: 0.2s;
    width: 1.25em;
    height: 1.25em;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 1em;
    margin: auto 0;
    @include themed() {
      color: t('text--secondary');
    }
  }
  &__icon ~ &__input {
    padding-left: 3em;
  }
  &__icon:has(+ &__input:focus) {
    @include themed() {
      color: t('primary');
    }
  }

  // Input
  &__input {
    width: 100%;
    transition: 0.2s;
    outline: none;
    border-radius: 0.25em;
    font-size: 1em;
    padding: 1em;
    @include themed() {
      color: t('text');
    }
    @include themed() {
      border: 1px solid t('border');
    }
    &:focus {
      @include themed() {
        border-color: t('primary');
      }
    }
  }
}
</style>
