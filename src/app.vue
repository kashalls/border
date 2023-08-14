<template>
  <div class="flex flex-col flex-wrap items-center w-full min-h-full h-screen justify-center bg-gradient-to-b from-black to-gray-900">
    <header class="absolute top-0 p-6 items-center  flex">
      <img class="h-9" src="~/public/logo.svg" />
    </header>
    <div class="flex flex-col items-center text-center w-11/12 text-center rounded-2xl border-1 bg-gray-800 p-8 max-w-prose">
      <h1 class="font-semibold text-2xl mb-2.5 text-red-500 font-mono">
        Border Gateway Endpoint
      </h1>
      <p class="mw-40ch text-base text-gray-200 opacity-75 font-light">
        You've attempted to visit a direct border gateway endpoint that is used for one of my services.
        There is nothing here.
        If you believe you are seeing this message in an error, please <a href="mailto:noc@ok8.sh" class="underline underline-offset-4 decoration-dashed hover:decoration-solid hover:text-gray-50">email me</a>.      </p>
    </div>
    <div class="absolute text-gray-800 bottom-5">
      © ok8.sh
    </div>
  </div>
</template>

<script setup>
useHead({
  title: 'Border Gateway Endpoint'
})
</script>