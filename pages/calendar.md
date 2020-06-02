---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: content
title: Calendar
---

<div class="calendar-head">
  <h1 style="text-align:center;">
    Calendar {{ site.semester }}: {{ site.short-title }} (All Sections)
  </h1>
  <h3 style="text-align:center;">
    Color Key: <span style="color:red;">Red-Required Work</span>, <span style="color:blue;">Blue-Optional Work</span>
  </h3>
  <h4 style="margin-bottom:30px;text-align:center;">
    Everything is due at 11:59pm
  </h4>
  <br>
</div>
<!-- Calendar Fall 2019: Stat 100 (All Sections)
Color Key: Red-Required Work, Blue-Optional Work
*Everything is due at 11:59pm -->

{% include calendar.html %}
