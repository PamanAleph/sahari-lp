<script>
  // components
  import Particles from "../components/Particles.svelte";
  import BlurFade from "../components/BlurFade.svelte";
  import Button from "../components/Button.svelte";
  import GridBeam from "../components/GridBeam.svelte";
  import BoxReveal from "../components/BoxReveal.svelte";

  // assets
  import SahariLogo from "../assets/logo/sahari.png";
  import SahariFriends from "../assets/logo/sahari_friends.png";
  import SahariMemory from "../assets/logo/sahari_memory.png";
  import SahariMemoryPlus from "../assets/logo/sahari_memory+.png";
  // mapping
  const ServiceCard = [
    {
      title: 'Sahari Friends<span class="text-[#5046e6]">.</span>',
      description: `
        Sahari Friends offers companionship for users engaging in social activities, 
        such as outings or visits to specific locations. With professional talents 
        chosen by the user, you can enjoy a safe and comfortable social experience 
        without the risk of negative exploitation.
      `,
      image: SahariFriends,
    },
    {
      title: "Sahari Memori",
      description: `
        Sahari Memori allows users to interact with an AI that mimics the responses 
        of a deceased loved one. By using memory and voice samples, this AI creates 
        a warm and personal conversation experience, helping relive cherished moments.
      `,
      image: SahariMemory,
    },
    {
      title: 'Sahari Memory<span class="text-[#5046e6] font-semibold">+</span>',
      description: `
        A premium service that offers additional features such as priority bookings 
        and more flexible interaction durations. Enjoy a richer experience with enhanced 
        access to Sahari Memori, making your memories even more special.
      `,
      image: SahariMemoryPlus,
    },
  ];

  import { cn } from "$lib/utils";
  import AnimatedBeam from "../components/beam/AnimatedBeam.svelte";
  import Circle from "../components/beam/Circle.svelte";

  let containerRef;
  // Circles
  let div1Ref;
  let div2Ref;
  let div3Ref;
  let div4Ref;
  let div5Ref;
  let div6Ref;
  let div7Ref;
  let className = "";
</script>

<section class="relative flex items-center">
  <div class="py-10 px-10 md:px-40 md:text-left text-center">
    <BlurFade delay={0.5}>
      <h1
        class="text-[2rem] md:text-[4rem] w-full md:w-[50rem] font-bold px-4 md:px-0"
      >
        Connect, Share, and Thrive with
      </h1>
    </BlurFade>
    <BlurFade delay={0.65}>
      <p
        class="text-[2rem] md:text-[4rem] font-bold bg-gradient-to-r from-violet-600 to-orange-400 text-transparent bg-clip-text"
      >
        SAHARI <span
          class="bg-gradient-to-r text-transparent bg-clip-text from-violet-600 to-orange-400"
          >APP</span
        >
      </p>
    </BlurFade>
    <BlurFade delay={0.8}>
      <h2
        class="py-4 md:py-10 text-justify text-md md:text-xl w-full md:w-[40rem] px-4 md:px-0"
      >
        We are Sahari, your trusted platform for meaningful connections.
        Offering safe companionship and AI-driven experiences, we’re committed
        to helping you feel connected and supported.
      </h2>
      <div class="flex justify-center md:justify-start">
        <Button class="my-4 ">Join Us</Button>
      </div>
    </BlurFade>
  </div>
  <BlurFade delay={0.8}>
    <img
      src={SahariLogo}
      alt="Logo"
      class="h-[20rem] drop-shadow-[0_10px_10px_#AE70FE] bounce-and-sway-animation hidden md:block"
    />
  </BlurFade>
  <Particles className="absolute inset-0" refresh={true} />
</section>

<GridBeam class="bg-grid-white/[0.05]">
  <div class="w-full py-6 px-10 md:px-40">
    <h1 class="text-center text-4xl font-bold py-6">Our Services</h1>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-10">
      {#each ServiceCard as card}
        <div
          class="relative mb-8 p-6 rounded-2xl shadow-md shadow-[#AE70FE] overflow-hidden"
        >
          <div class="absolute inset-0 z-0">
            <img
              src={card.image}
              alt={`${card.title}'s image`}
              class="w-full h-full object-cover opacity-10"
            />
          </div>
          <div class="relative z-10">
            <BoxReveal boxColor="#5046e6" duration={0.5}>
              <p class="text-[2rem] font-semibold">
                {@html card.title}
              </p>
            </BoxReveal>
            <BoxReveal boxColor="#5046e6" duration={0.5}>
              <h2 class="mt-[.5rem] text-[1rem] text-justify">
                {@html card.description}
              </h2>
            </BoxReveal>
          </div>
        </div>
      {/each}
    </div>
  </div>

  <div
    bind:this={containerRef}
    class={cn(
      "relative flex w-full items-center justify-center overflow-hidden rounded-lg bg-background p-10",
      className
    )}
  >
    <!--  Gradient Line -->
    <div class="absolute right-5 top-0 h-px w-1/2" />
    <!-- Main Component  -->

    <div
      class="flex h-full w-full flex-row justify-between gap-16 max-w-2xl items-center"
    >
      <div class="flex flex-col justify-center gap-8">
        <!-- Div 1 -->
         
        <Circle>
          <img src={SahariFriends} bind:this={div1Ref} alt="Logo" />
        </Circle>
        <!-- Div 2 -->
        <Circle>
          <img src={SahariMemory} bind:this={div2Ref} alt="Logo" />
        </Circle>
        <!-- Div 3 -->
        <Circle>
          <img src={SahariMemoryPlus} bind:this={div3Ref} alt="Logo" />
        </Circle>
        <!-- Div 5 -->
      </div>
      <div class="flex flex-col justify-center">
        <!-- Div 6 -->
        <Circle>
          <img src={SahariLogo} bind:this={div6Ref} alt="Logo" />
        </Circle>
      </div>
      <div class="flex flec-col justify-center">
        <!-- Div 7 -->
        <Circle>
          <svg
            bind:this={div7Ref}
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="lucide lucide-user"
            ><path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" /><circle
              cx="12"
              cy="7"
              r="4"
            /></svg
          >
        </Circle>
      </div>
    </div>

    <AnimatedBeam
      bind:containerRef
      bind:fromRef={div1Ref}
      bind:toRef={div6Ref}
    />
    <AnimatedBeam
      bind:containerRef
      bind:fromRef={div2Ref}
      bind:toRef={div6Ref}
    />
    <AnimatedBeam
      bind:containerRef
      bind:fromRef={div3Ref}
      bind:toRef={div6Ref}
    />
    <AnimatedBeam
      bind:containerRef
      bind:fromRef={div4Ref}
      bind:toRef={div6Ref}
    />
    <AnimatedBeam
      bind:containerRef
      bind:fromRef={div5Ref}
      bind:toRef={div6Ref}
    />
    <AnimatedBeam
      bind:containerRef
      bind:fromRef={div6Ref}
      bind:toRef={div7Ref}
    />
  </div>
</GridBeam>
