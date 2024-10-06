<script>
  import "../app.css";
  import Navbar from "../components/Navbar.svelte";
  import { Router } from 'svelte-routing';
</script>

<Navbar />

<Router>
  <slot />
</Router>