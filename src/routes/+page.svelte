<script>
  import Particles from "../components/Particles.svelte";
  import BlurFade from "../components/BlurFade.svelte";
  import SahariLogo from "../assets/logo/sahari.png";
  import Button from "../components/Button.svelte";
  import GridBeam from "../components/GridBeam.svelte";
</script>

<section>
  <div class="relative flex items-center">
    <div class="py-6 px-10 md:px-40">
      <BlurFade delay={0.75}>
        <h1
          class="text-[3rem] md:text-[4rem] w-full text-left md:w-[50rem] font-bold px-4 md:px-0"
        >
          Connect, Share, and Thrive with
        </h1>
      </BlurFade>
      <BlurFade delay={1}>
        <p
          class="text-[3rem] md:text-[4rem] font-bold bg-gradient-to-r from-violet-600 to-orange-400 text-transparent bg-clip-text"
        >
          SAHARI <span
            class="bg-gradient-to-r text-transparent bg-clip-text from-violet-600 to-orange-400"
            >APP</span
          >
        </p>
      </BlurFade>
      <BlurFade delay={1.25}>
        <h2
          class="py-4 md:py-10 text-center md:text-justify text-lg md:text-xl w-full md:w-[40rem] px-4 md:px-0"
        >
          We are Sahari, your trusted platform for meaningful connections.
          Offering safe companionship and AI-driven experiences, we’re committed
          to helping you feel connected and supported.
        </h2>
        <Button class="my-4">Join Us</Button>
      </BlurFade>
    </div>
    <BlurFade delay={1.25}>
      <img
        src={SahariLogo}
        alt="Logo"
        class="h-[20rem] drop-shadow-[0_10px_10px_#AE70FE] bounce-and-sway-animation"
      />
    </BlurFade>
    <Particles className="absolute inset-0" refresh={true} />
  </div>

  <div
  class="w-full h-[400px] dark:bg-grid-white/[0.05] bg-grid-black/[0.07]"
>
  <GridBeam class="sm:pl-16 pt-28 pl-4 flex items-start justify-start">
    <div class="grid gap-2">
      <h1 class="sm:text-5xl text-4xl font-bold max-w-sm">
        Hello Amazing Svelte Developer
      </h1>
      <p class="text-neutral-500 max-w-lg">
        Beautiful beam which I btw reverse engineered from <span
          class="text-primary">Aceternity UI</span
        >
      </p>
      <p class="text-neutral-500 max-w-lg">
        Just Copied it from : <a
          href="https://ui.lukacho.com/components/background-grid-beam"
          target="_blank"
          class="text-primary">Lukacho UI</a
        >
      </p>
    </div>
  </GridBeam>
</div>
</section>
