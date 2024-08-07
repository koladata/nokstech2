﻿
<style>

    * {
  box-sizing: border-box;
}
body {
  margin: 0;
}
.wrap {
  width: 320px;
  border: 1px solid #ccc;
  height: 480px;
  overflow: auto;
  position: relative;
}
.top-header {
  position: fixed;
  top: 0;
  left: 0;
  width: 320px;
  height: 60px;
}
.top-header .menu-icon {
  position: absolute;
  top: 0;
  right: 0;
  padding: 18px 20px;
}
.fix-search .top-header {
  background: #eee;
}
.search {
  position: absolute;
  top: 155px;
  left: 20px;
  right: 20px;
}
.search input {
  width: 265px;
  border: 1px solid #ccc;
  padding: 8px;
  font-size: 15px;
  transition: width 0.2s;
  -webkit-appearance: none;
}
.fix-search .search {
  position: fixed;
  top: 10px;
}
.fix-search .search input {
  width: 250px;
}
.top {
  height: 250px;
  padding-top: 40px;
}
.hero {
  width: 200px;
  height: 100px;
  background: #ccc;
  margin: 0 auto;
}
main {
  padding: 0 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
main div {
  width: 125px;
  height: 80px;
  background: #ccc;
  margin: 0 0 20px 0;
}


</style>

<script>
    var wrap = $("#wrap");

    wrap.on("scroll", function (e) {
        if (this.scrollleft > 17) {
            wrap.add ("search")
        }

        if (this.scrollTop > 20) {
            wrap.addClass("fix-search");
        } else {
            wrap.removeClass("fix-search");
        }

    });
</script>
<div class="wrap" id="wrap">
  
  <header class="top-header">
    <span class="menu-icon">☰</span>
  </header>
  
  <div class="search">
    <input type="search" placeholder="Search or type URL" />
  </div>
  
  <div class="top">
    <div class="hero"></div>
  </div>
  
  <main>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
  </main>
  
</div>

