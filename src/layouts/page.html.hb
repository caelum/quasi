<!doctype html>
<html lang="en" itemscope itemtype="http://schema.org/Article">
<head>
	<meta charset="utf-8">
	<title>{{site.title}} | {{site.publisher.name}}</title>
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<meta property="og:title" content="{{site.title}}">
	<meta property="og:type" content="article">
	<meta property="og:image" itemprop="image" content="{{site.url}}{{site.img}}">
	<meta property="og:url" itemprop="url" content="{{site.url}}">
	<meta property="og:site_name" content="{{site.title}} | {{site.publisher.name}}">
	<meta property="og:description" itemprop="description" content="{{site.description}}">
	<meta property="article:publisher" content="{{site.publisher.facebook_page}}">

	<!-- TODO authors and time metadata & microdata -->
	{{{getMetas}}}
	{{{getStylesAndAdd "http://fonts.googleapis.com/css?family=Oxygen:400,300,700" "style.css"}}}
</head>
<body>
	<header class="container">
		<div itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
			<a itemprop="url"  class="main-logo" href="{{site.publisher.website}}">
				<img itemprop="logo" style="width: 21.2vh" src="{{site.publisher.img}}" alt="{{site.publisher.name}}">
			</a>
		</div>
		<h1 itemprop="name" class="title main-title" style="margin-top: -.2em; margin-left: -.05em;">
			{{site.title}}
		</h1>
	</header>
	<main itemprop="articleBody">
		{{{content}}}
	</main>
	<footer>
		<section class='container participants'>
			<h2 class="title section-title">participantes</h2>
			<p class="participants-text">Agradecemos a todos os colaboradores que de alguma forma participaram da criação.</p>
			{{#each participants}}
				<h3 class='title label'>{{name}}</h3>
				<ul class="participants-list">
					{{#each people}}
						<li class="participant">
							<span class="participant-name">{{name}}</span>
							<img class="participant-img" src="{{img}}" width="80px" height="80px">
					{{/each}}
				</ul>
			{{/each}}
		</section>
		<ul class="container sponsors">
			{{#each sponsors}}
				<li class="sponsor-box sponsor-{{@index}}">
					<a href="{{website}}" class="sponsor-logo">
						<img alt="{{name}}" src="{{img}}" class="sponsor-logo" height="53px">
					</a>
					<ul class="sponsor-call">
						{{#each description}}
							<li class="call-item">
								<a href="{{url}}">{{content}}</a>
							</li>
						{{else}}
							{{#with ../this}}
								<li class="call-item">
									<a href="{{website}}">{{../description}}</a>
								</li>
							{{/with}}
						{{/each}}
					</ul>
				</li>
			{{/each}}
		</ul>
	</footer>
</body>
</html>
