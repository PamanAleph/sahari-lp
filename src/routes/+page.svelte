<script>
  // components
  import Particles from "../components/Particles.svelte";
  import BlurFade from "../components/BlurFade.svelte";
  import Button from "../components/Button.svelte";
  import GridBeam from "../components/GridBeam.svelte";
  import BoxReveal from "../components/BoxReveal.svelte";
  import MaskEffect from "../components/mask/MaskEffect.svelte";
  import MovingCards from "../components/MovingCards.svelte";
  import BackgroundBeams from "../components/BackgroundBeams.svelte";
  import StickyScroll from "../components/StickyScroll.svelte";

  // assets
  import SahariLogo from "../assets/logo/sahari.png";
  import SahariFriends from "../assets/logo/sahari_friends.png";
  import SahariMemory from "../assets/logo/sahari_memory.png";
  import SahariMemoryPlus from "../assets/logo/sahari_memory+.png";

  // mapping

  const content = [
    {
      title: "Safe and Trusted Approach",
      description:
        "Sahari guarantees your safety and comfort while using our services. Every talent goes through a strict verification process, so you can enjoy your time together without any worries. User privacy and safety are our top priorities.",
    },
    {
      title: "Personal and Empathetic Service",
      description:
        "We understand the importance of emotional connection. With an empathetic approach, Sahari ensures every meeting and conversation feels personal, providing comfort to those in need of a companion or social interaction.",
    },
    {
      title: "Innovative AI Chatbot Feature",
      description:
        "Sahari Memori offers a unique opportunity to interact with an AI chatbot that can simulate conversations with your loved ones. Using cutting-edge AI technology, you can relive the warmth of past memories.",
    },
    {
      title: "Professional and Experienced Talent",
      description:
        "Every talent at Sahari is selected based on their experience and ability to create a warm and comfortable atmosphere. They are ready to accompany you in various social activities with professionalism and friendliness.",
    },
    {
      title: "Flexible Service",
      description:
        "With Sahari Memory+, you can enjoy additional features such as priority booking and more flexible durations. We offer an experience tailored to your needs, making every moment together more meaningful.",
    },
  ];

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
      title: "Sahari Memory",
      description: `
        Sahari Memory allows users to interact with an AI that mimics the responses 
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

  const testimonials = [
    {
      quote:
        "Sahari transformed my dating experience! The variety of talents available made it easy to find someone who shared my interests. I felt comfortable and excited during our date!",
      name: "Sarah Johnson",
      title: "Happy Customer",
    },
    {
      quote:
        "Working with Sahari has been a game-changer for me. I love connecting with people and helping them create memorable experiences. The support and professionalism of the team are exceptional!",
      name: "Alex Roberts",
      title: "Talent Partner",
    },
    {
      quote:
        "I was nervous about online dating, but Sahari's platform made everything seamless. The chat feature with the AI talent gave me confidence to take the plunge!",
      name: "Michael Lee",
      title: "Satisfied User",
    },
    {
      quote:
        "Collaborating with Sahari has allowed us to reach a wider audience. Their commitment to quality and customer satisfaction is evident in everything they do.",
      name: "Emily White",
      title: "Local Business Owner",
    },
    {
      quote:
        "Joining Sahari has not only provided me with a source of income but also the joy of meeting new people. I appreciate the emphasis on safety and professionalism!",
      name: "Jessica Brown",
      title: "Talent Performer",
    },
    {
      quote:
        "Sahari is the future of dating! I loved the offline date option. The whole experience felt genuine and exciting.",
      name: "David Smith",
      title: "Enthusiastic User",
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
        class="font-anta text-[2rem] md:text-[4rem] font-bold bg-gradient-to-r from-violet-600 to-orange-400 text-transparent bg-clip-text"
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

<GridBeam class="bg-grid-white/[0.05] py-8">
  <div class="w-full px-10 md:px-40">
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
              <p class="text-[2rem] font-semibold font-anta">
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
      "relative flex w-full items-center justify-center overflow-hidden rounded-lg bg-background p-6 sm:p-10",
      className
    )}
  >
    <!-- Gradient Line -->
    <div class="absolute right-5 top-0 h-px w-1/2" />

    <!-- Main Component -->
    <div
      class="flex h-full w-full flex-col md:flex-row justify-between gap-8 md:gap-16 max-w-2xl items-center"
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
      </div>

      <div class="flex flex-col justify-center">
        <!-- Div 6 -->
        <Circle>
          <img src={SahariLogo} bind:this={div6Ref} alt="Logo" />
        </Circle>
      </div>

      <div class="flex flex-col justify-center">
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
            />
          </svg>
        </Circle>
      </div>
    </div>

    <!-- Animated Beams -->
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

<section class="flex items-center justify-center overflow-hidden">
  <MaskEffect size={10} revealSize={700} className="rounded-md">
    <p
      slot="revealText"
      class="mx-auto text-center text-xl md:text-4xl font-bold py-10 px-10 md:px-40"
    >
      SAHARI connects you with companions for conversations, recreation, and
      more, ensuring a safe and professional experience.
    </p>
    <span class="text-red-500">SAHARI</span> offers a unique way to connect with
    companions, prioritizing safety and privacy for
    <span class="text-red-500">Positive Experiences.</span>
  </MaskEffect>
</section>

<!-- testimonials  -->
<section class="relative antialiased py-8">
  <h2 class="text-center text-3xl font-bold py-12 px-10 md:px-40">
    What Our Clients Say
  </h2>
  <MovingCards items={testimonials} direction="right" speed="slow" />
  <MovingCards items={testimonials} direction="left" speed="slow" />
  <BackgroundBeams />
</section>

<!-- Why choose us -->

<section class="relative py-16">
  <div class="container mx-auto px-6 lg:px-8">
    <div class="text-center">
      <h2 class="text-4xl font-bold tracking-tight text-white sm:text-5xl">
        Why Choose Us
      </h2>
      <p class="mt-4 text-lg text-gray-300 max-w-2xl mx-auto">
        Experience unmatched companionship and emotional support through our
        innovative platform, designed to bring meaningful connections to life.
      </p>
    </div>
  </div>
  <div class="mt-16">
    <StickyScroll {content} />
  </div>
</section>
