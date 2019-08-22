<!--
  File: layout/base.tpl
  Location: End of the file
-->

<div class="modal modal-is-hidden task6">
    <div class="modal-background"></div>
    <div class="modal-content">
        Hello World
    </div>
</div>


<script>
    if (!window.localStorage.getItem("hello-world")) {
        var modal = document.querySelector(".task6");
        modal.classList.remove("modal-is-hidden");
        window.localStorage.setItem("hello-world", true);
        setTimeout(() => {
            modal.classList.add("modal-is-hidden");
        }, 5000);
    }
</script>


<!--
  File: assets/_theme.scss
-->
<style>
    .task6 {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        color: #fff;
        background: rgba(0, 0, 0, 0.7);
        display: flex;
        justify-content: center;
        padding-top: 33vh;
        font-size: 3rem;
        font-family: Arial, Helvetica, sans-serif;
        &.modal-is-hidden {
            display: none;
        }
    }
</style>