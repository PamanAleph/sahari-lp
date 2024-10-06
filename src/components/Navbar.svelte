<script>
	  import SahariLogo from "../assets/logo/sahari.png";
	  import BlurFade from "../components/BlurFade.svelte";

</script>
<BlurFade delay={0.5}>

<header class="p-4">
	<div class="container flex justify-between h-16 mx-auto md:justify-center md:space-x-8">
		<!-- <ul class="items-stretch hidden space-x-3 md:flex">
			<li class="flex">
				<a rel="noopener noreferrer" href="/" class="flex items-center px-4 -mb-1">Link</a>
			</li>
			<li class="flex">
				<a rel="noopener noreferrer" href="/" class="flex items-center px-4 -mb-1">Link</a>
			</li>
			<li class="flex">
				<a rel="noopener noreferrer" href="/" class="flex items-center px-4 -mb-1 ">Link</a>
			</li>
		</ul> -->
		<a rel="noopener noreferrer" href="/" aria-label="Back to homepage" class="flex items-center p-2">
			<img src={SahariLogo} alt="Sahari Logo" class="w-8 h-12">
		</a>
		<!-- <ul class="items-stretch hidden space-x-3 md:flex">
			<li class="flex">
				<a rel="noopener noreferrer" href="/" class="flex items-center px-4 -mb-1">Link</a>
			</li>
			<li class="flex">
				<a rel="noopener noreferrer" href="/" class="flex items-center px-4 -mb-1">Link</a>
			</li>
			<li class="flex">
				<a rel="noopener noreferrer" href="/" class="flex items-center px-4 -mb-1">Link</a>
			</li>
		</ul>
		<button title="Button" type="button" class="p-4 md:hidden">
			<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-6 h-6 text-white">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
			</svg>
		</button> -->
	</div>
</header>
</BlurFade>