<script>
  import Particles from "../components/Particles.svelte";
  import BlurFade from "../components/BlurFade.svelte";
  import SahariLogo from "../assets/logo/sahari.png";
  import Button from "../components/Button.svelte";
  import GridBeam from "../components/GridBeam.svelte";
  import BoxReveal from "../components/BoxReveal.svelte";

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
    },
    {
      title: 'Sahari Memori',
      description: `
        Sahari Memori allows users to interact with an AI that mimics the responses 
        of a deceased loved one. By using memory and voice samples, this AI creates 
        a warm and personal conversation experience, helping relive cherished moments.
      `,
    },
    {
      title: 'Sahari Memory<span class="text-[#5046e6]">+</span>',
      description: `
        A premium service that offers additional features such as priority bookings 
        and more flexible interaction durations. Enjoy a richer experience with enhanced 
        access to Sahari Memori, making your memories even more special.
      `,
    },
  ];
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
        <div class="mb-8 p-6 rounded-2xl shadow-md shadow-[#AE70FE] ">
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
      {/each}
    </div>
  </div>
</GridBeam>