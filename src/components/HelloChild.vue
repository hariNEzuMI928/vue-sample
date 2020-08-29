<template>
  <div>
    <p>{{ title }}</p>
    <!-- ボタンが押されるとincrementCounterが実行される -->
    <button v-on:click="incrementCounter">{{ counter }}</button>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      title: "はろー！こども！",
      counter: 0
    };
  },
  methods: {
    incrementCounter: function() {
      this.counter += 1;
      // 親コンポーネントのincrementが呼び出す（実行）
      this.$emit("increment");
    }
  }
};
</script>
