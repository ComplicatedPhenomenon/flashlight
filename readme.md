
* start from `szaghi`

  https://github.com/szaghi?tab=following

* next page 

  https://github.com/szaghi?page=2&tab=following

Find followers, add in set,

iterate this set, 

pseudo code
```py
s = 'https://github.com/{}?tab=following'
for i in following: 
    request(s.format(i))
```

```html
<div class="d-table-cell col-9 v-align-top pr-3">
    <a class="d-inline-block no-underline mb-1" data-hovercard-type="user" data-hovercard-url="/users/reinh-bader/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="/reinh-bader">
    <span class="f4 link-gray-dark"></span>
    <span class="link-gray pl-1">reinh-bader</span>
    </a>
</div>
```