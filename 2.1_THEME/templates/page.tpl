<div class="container">
	<div class="shb-page-content">
		<div class="column is-paddingless is-10-desktop is-offset-1-desktop">
			<header class="shb-page-title">
				<h1 class="has-text-weight-bold">{$page->title}</h1>
			</header>
			<div class="wysiwyg-content shb-page-wysiwyg-content">
				{$page_content}
			</div>
			<script>
			/* Task 9 */
				document.addEventListener("click", function(e) {
						if (e.target && e.target.classList.contains("showIpsum")) {
								var nextP = e.target.nextElementSibling;
								var paragraphs = document.querySelectorAll(".ipsum");
								for(let i = 0; i < paragraphs.length; i++) {
									paragraphs[i].style.display = "none";
								}
								if (nextP.classList.contains("ipsum")) {
										if (nextP.style.display === "none") {
												nextP.style.display = "block";
										} else {
												nextP.style.display = "none";
										}
								}
						}
				});
			</script>
		</div>
	</div>
</div>
