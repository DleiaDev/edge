<script setup lang="ts">
import { FormGroup } from '#components';
import { useMagicKeys, useActiveElement, whenever } from '@vueuse/core';

const FormGroupSearchRef = ref<InstanceType<typeof FormGroup> | null>(null);
const focusSearch = () => {
  if (!FormGroupSearchRef.value) return;
  FormGroupSearchRef.value.focus();
};

const { ctrl_k } = useMagicKeys({
  passive: false,
  onEventFired(e) {
    if (e.ctrlKey && e.key === 'k' && e.type === 'keydown') e.preventDefault();
  },
});
const activeElement = useActiveElement();
const notUsingInput = computed(
  () => activeElement.value?.tagName !== 'INPUT' && activeElement.value?.tagName !== 'TEXTAREA',
);
whenever(ctrl_k, () => {
  if (notUsingInput.value) focusSearch();
});
</script>

<template>
  <FormGroup class="navbar-search" ref="FormGroupSearchRef" icon="search" placeholder="Search...">
    <template #after>
      <div class="form-group__shortcut" role="button" @click="focusSearch">
        <SvgIcon name="command-symbol" />
        K
      </div>
    </template>
  </FormGroup>
</template>

<style lang="scss">
.navbar-search {
  .form-group__input {
    @include themed() {
      background-color: t('bg');
      &:not(:focus) {
        border-color: t('bg--layout');
      }
    }
  }
  .form-group__shortcut {
    font-size: 1.2em;
    height: 1.5em;
    padding: 0.2em 0.5em;
    border-radius: 0.25em;
    position: absolute;
    top: 0;
    right: 0.5em;
    bottom: 0;
    margin: auto 0;
    display: flex;
    align-items: center;
    font-weight: bold;
    user-select: none;
    cursor: pointer;
    @include themed() {
      color: t('text--primary');
      background-color: t('bg--layout');
    }
    .svg-icon {
      width: 0.75em;
      height: 0.75em;
      margin-right: 0.4em;
    }
  }
}
</style>
