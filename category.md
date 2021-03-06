---
layout:   page
title:    Categories
permalink: /category/
tags: category
---
{% comment%}
Here we generate all the categories.
{% endcomment%}

{% assign rawcats = "" %}
{% for post in site.posts %}
{% assign tcats = post.category | join:'|' | append:'|' %}
{% assign rawcats = rawcats | append:tcats %}
{% endfor %}

{% assign rawcats = rawcats | split:'|' | sort %}

{% assign cats = "" %}

{% for cat in rawcats %}
{% if cat != "" %}

{% if cats == "" %}
{% assign cats = cat | split:'|' %}
{% endif %}

{% unless cats contains cat %}
{% assign cats = cats | join:'|' | append:'|' | append:cat | split:'|' %}
{% endunless %}
{% endif %}
{% endfor %}

<div class="posts">
        {% for ct in cats %}
        <a href="#{{ ct | slugify }}" class="codinfox-category-mark" style="color:#999;text-decoration: none;"> {{ ct }} </a> &nbsp;&nbsp;
        {% endfor %}
        <a href="#no-category" class="codinfox-category-mark" style="color:#999;text-decoration: none;"> No Category </a> &nbsp;&nbsp;

    {% for ct in cats %}
    <h1 id="{{ ct | slugify }}">{{ ct }}</h1>
    <ul class="codinfox-category-list">
        {% for post in site.posts %}
        {% if post.category contains ct %}
        <li>
            <h2>
                <a href="{{ post.url }}">
                    {{ post.title }}</a>&nbsp;&nbsp;&nbsp;
                    <small>{{ post.date | date_to_string }}</small>
            </h2>
		<h4>
                {% for tag in post.tags %}
                <a class="codinfox-tag-mark" href="/blog/tag/#{{ tag | slugify }}">{{ tag }}</a> /
                {% endfor %}
		</h4>
        </li>
        {% endif %}
        {% endfor %}
    </ul>
    {% endfor %}

    <h1 id="no-category">No Category</h1>
    <ul class="codinfox-category-list">
        {% for post in site.posts %}
        {% unless post.category %}
        <li>
            <h2>
                <a href="{{ post.url }}">
                    {{ post.title }}</a>
                    &nbsp;&nbsp;&nbsp;<small>{{ post.date | date_to_string }}</small></h2>
		 <h4>
                    {% for tag in post.tags %}
                <a class="codinfox-tag-mark" href="/blog/tag/#{{ tag | slugify }}">{{ tag }}</a> /
                {% endfor %}
		</h4>
        </li>
        {% endunless %}
        {% endfor %}
    </ul>
</div>
