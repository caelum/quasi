---
layout: page
referencesOthers: true
---

{{#with intro}}
	<section class="container intro">
		<h2 class="title">{{title}}</h2>
		<div class="text">{{{content}}}</div>
	</section>
{{/with}}
{{#each sections}}
	<section class="container article-section">
		<h2 class="title section-title">{{name}}</h2>
		<div class="section-content text">
			{{#each articles}}
				<h3 class="title label article-heading">{{heading}}</h3>
				{{{content}}}
			{{/each}}
		</div>
	</section>
{{/each}}
