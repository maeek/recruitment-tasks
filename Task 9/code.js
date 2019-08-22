/*
	File: templates/page.tpl
	Line: 10

	HTML structure

	<div>
		<h5 class="showIpsum">Lorem Ipsum</h5>
		<p class="ipsum" style="display:none;cursor:pointer">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
	<div>
		<h5 class="showIpsum">Lorem Ipsum</h5>
		<p class="ipsum" style="display:none;cursor:pointer">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
	<div>
		<h5 class="showIpsum">Lorem Ipsum</h5>
		<p class="ipsum" style="display:none;cursor:pointer">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>

*/

document.addEventListener("click", function(e) {
    if (e.target && e.target.classList.contains("showIpsum")) {
        var nextP = e.target.nextElementSibling;
        var paragraphs = document.querySelectorAll(".ipsum");
        for (let i = 0; i < paragraphs.length; i++) {
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