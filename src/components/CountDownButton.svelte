<script>
    import { onMount } from "svelte";
  import Button from "./Button.svelte";
    
    export let baseText = "Join Us";
    export let launchDate; 
    let isComingSoon = true;
    let buttonText = "Coming Soon";
    let buttonDisabled = true;
  
    const today = new Date();
  
    function updateButtonText() {
      const timeDifference = new Date(launchDate) - today;
      const daysRemaining = Math.ceil(timeDifference / (1000 * 60 * 60 * 24));
  
      if (today >= new Date(launchDate)) {
        isComingSoon = false;
        buttonText = baseText; 
        buttonDisabled = false;
      } else {
        isComingSoon = true;
        buttonText = `${baseText} in ${daysRemaining} days`; 
        buttonDisabled = true;
      }
    }
  
    onMount(() => {
      updateButtonText();
    });
  </script>
  
  <Button class="my-4" disabled={buttonDisabled}>
    {buttonText}
  </Button>
  