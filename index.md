---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

Aquí guardo documentos, tutoriales y tabs que quiero dejar públicas. Ojalá a alguién sirva aquello que he creado.


<!-- {% if page.show_sidebar %}
  <div class="sidebar">
    sidebar content
  </div>
{% endif %} -->

<!-- <ul>
{% for post in site.posts %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul> -->


{% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
  {% for page in category[1] %}
    <li>
      <a href="{{ page.url }}">{{ page.title }}</a>
    </li>
  {% endfor %}
  </ul>
{% endfor %}
