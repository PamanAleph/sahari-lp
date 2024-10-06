<script lang="js">
    import { onMount } from 'svelte';
  
    let activeCard = 0;
    let linearGradients = [
      'linear-gradient(to bottom right, var(--cyan-500), var(--emerald-500))',
      'linear-gradient(to bottom right, var(--pink-500), var(--indigo-500))',
      'linear-gradient(to bottom right, var(--orange-500), var(--yellow-500))'
    ];
    let scrollYProgress = 0;
  
    export let content = [
      { title: 'Title 1', description: 'Description 1', image: '' },
      { title: 'Title 2', description: 'Description 2', image: 'path/to/image2.jpg' }
    ];
  
    let ref;
  
    onMount(() => {
      const handleScroll = (event) => {
        const target = event.target;
        scrollYProgress = target.scrollTop / target.scrollHeight;
        const cardsBreakpoints = content.map((_, index) => index / content.length);
  
        cardsBreakpoints.forEach((breakpoint, index) => {
          if (scrollYProgress > breakpoint - 0.2 && scrollYProgress <= breakpoint) {
            activeCard = index;
          }
        });
      };
  
      ref.addEventListener('scroll', handleScroll);
  
      return () => {
        ref.removeEventListener('scroll', handleScroll);
      };
    });
  </script>
  
  <div
    bind:this={ref}
    class="relative flex h-[32rem] justify-center space-x-24 overflow-y-auto rounded-md p-10 transition ease-in-out"
  >
    <div class="div relative flex items-start px-4">
      <div class="max-w-4xl">
        {#each content as item, index (item.title + index)}
          <div class="my-20">
            <h2
              style="opacity: {activeCard === index ? 1 : 0.3}"
              class="text-2xl font-bold text-slate-100 max-w-sm"
            >
              {item.title}
            </h2>
            <p
              style="opacity: {activeCard === index ? 1 : 0.3}"
              class="text-kg mt-10 max-w-sm text-slate-300 text-justify"
            >
              {item.description}
            </p>
          </div>
        {/each}
        <div class="h-40" />
      </div>
    </div>
    <div
      class="sticky top-10 hidden h-[20rem] w-[25rem] overflow-hidden rounded-md lg:block"
      style="background: {content[activeCard].image ? `url(${content[activeCard].image}) no-repeat center/cover` : linearGradients[activeCard % linearGradients.length]}"
    ></div>
  </div>  