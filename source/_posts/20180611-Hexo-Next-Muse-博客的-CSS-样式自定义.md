---
title: Hexo Next Muse 博客的 CSS 样式自定义
categories: 建站记录
tags:
  - css
  - Hexo
  - blog
  - NexT
abbrlink: 8a897d80
date: 2018-06-11 04:21:47
mathjax:
no_toc:
comments:
no_reward: 
---
在 `/themes/next/source/css/_custom/custom.styl` 文件中添加代码可以自定义样式，以下是我的设置内容：<!-- more -->

```stylus
// Custom styles.
//标题的样式
.headband {
  display: none;
}

.brand {
  background: transparent;
}

.site-meta .site-title {
  font-weight: bolder;
}

.site-meta .site-subtitle {
  font-family: 'Comic Sans MS', "PingFang SC", "Microsoft YaHei", Georgia, sans-serif;
  color: #eee;
}

//导航栏样式
.header {
  height: 20vh;
  background: url("/uploads/header-bg.jpg");
  background-position-y: -15vh;
}

.header-inner{
  padding: 25px 0 20px;
}

.menu .menu-item {
  margin: 0 2px;
}

.menu .menu-item a {
  border-bottom-color: transparent !important;
  font-size: 14px;
  color: #0f2e41;
  border-radius: 4px;
  padding: 0px 10px;
  background: none;
  border: none;
  transition-property: background;
  display: block;
  line-height: inherit;
  transition-duration: 0.2s;
  transition-timing-function: ease-in-out;
  transition-delay: 0s;
}

@media (max-width: 767px){
  .menu .menu-item a {
    padding: 4px 10px;
  }
}

.menu .menu-item a:hover {
  transition-duration: 0.3s;
  background: #e1e1e1;
  border-bottom-color: #222;
}

//首页文章样式
.post {
  margin-bottom: 60px;
  padding: 25px 30px 25px;
  -webkit-box-shadow: 0 0 14px rgba(202,203,204,.5);
  -moz-box-shadow: 0 0 14px rgba(202,203,204,.5);
  box-shadow: 0 0 14px rgba(202,203,204,.5);
  background: #fff;
}

.page {
  margin-bottom: 60px;
  padding: 25px 30px 25px;
  -webkit-box-shadow: 0 0 14px rgba(202,203,204,.5);
  -moz-box-shadow: 0 0 14px rgba(202,203,204,.5);
  box-shadow: 0 0 14px rgba(202,203,204,.5);
  background: #fff;
}

.posts-expand .post-eof {
  display: block;
  margin: 0px auto 30px;
  width: 0;
}

.posts-expand .post-title {
  font-weight: bolder;
  border-left: #649ab6 10px solid;
}

.posts-expand .post-title-link{
  line-height: 2.2;
}

//评论区样式
.comments{
  padding: 25px 40px 25px;
  -webkit-box-shadow: 0 0 14px rgba(202,203,204,.5);
  -moz-box-shadow: 0 0 14px rgba(202,203,204,.5);
  box-shadow: 0 0 14px rgba(202,203,204,.5);
  background: #fff;
  margin: 0;
}

//分类页项目符
.category-all-page .category-list-item {
    margin: 5px 30px;
}

//移动端布局修正bug
@media (max-width: 767px) {
  .posts-expand {
    margin: 0 20px !important;
    }
  .post {
    padding: 25px 5px 25px;
    }
  .comments {
    padding: 10px 10px 0px !important;
    margin: 0 20px 0 !important;
    }
  .category-all-page .category-list-item {
    margin: 5px 40px;
    }
}

//页码栏样式
.pagination {
  border-top:none;
}

.pagination .prev, .pagination .next, .pagination .page-number {
  border-top:none;
}

//默认侧边栏多级目录展开
/*
.post-toc .nav .nav-child { 
    display: block; 
}
*/

//侧边栏信息样式修改
.site-author-name {
  font-family: 'Comic Sans MS', "PingFang SC", "Microsoft YaHei", Georgia, sans-serif;
  margin: 20px 0 0;
}

.site-description {
  font-family: 'Comic Sans MS', "PingFang SC", "Microsoft YaHei", Georgia, sans-serif;
}

.links-of-blogroll {
  font-size: 14px;
  margin-bottom: 42px;
}

.links-of-author {
  margin-top: 30px;
  margin-bottom: 30px;
}

.links-of-author a:before, .links-of-author .exturl:before {
  background: #649ab6;
}

//侧栏按钮样式
.sidebar-toggle {
    background: #649ab6;
}

.back-to-top {
    background: #649ab6;
}

//动态背景样式
.bg_content{
  position: fixed;
  top: 0;
  z-index: -1;
  width: 100%;
  height: 100%;
  margin:0;
  overflow:hidden;
  cursor:none;
  background: #fff;
}

//修改默认按钮样式
.post-button {
  margin-top: 20px;
  text-align: right;
}

.btn {
  padding: 0 5px
  color: #555;
  background: #fff;
  border: 1px solid transparent;
}

.btn:hover {
  border-color: transparent;
  color: #222;
  background: #fff;
  border-bottom-color: #222
}


//Disqus加载按钮样式
/*
.btncomment {
  display: inline-block;
  padding: 0 20px;
  font-size: 14px;
  color: #fff;
  background: #222;
  border: 2px solid #222;
  text-decoration: none;
  border-radius: 0;
  transition-property: background-color;
  transition-duration: 0.2s;
  transition-timing-function: ease-in-out;
  transition-delay: 0s;
  line-height: 2;
}

.btncomment:hover {
  border-color: #222;
  color: #222;
  background: #fff;
}
*/


//赞赏按钮样式
#rewardButton span {
  height: 35px;
  width: 35px;
  //line-height:30px; 
  font-size: 15px;
  font-family: "PingFang SC", "Microsoft YaHei", Georgia, sans-serif;
  background: #0493ab;
  border-radius: 2px;
  -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: 0.2s ease-out;
}

#rewardButton span:hover {
  background: #0485ab;
  -webkit-box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  -moz-box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

#wechat:hover p{
  animation: none;
}

#alipay:hover p{
  animation: none;
}

//MathJax 的静态显示 （详见3.11节的介绍）
.mjpage__block {
  display: inline-block;
  text-align: center;
  width: 100%;
  overflow-x: auto;
}

//文章标签样式
.posts-expand .post-tags {
  text-align: left;
}

.posts-expand .post-tags a {
  -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  font-family: 'Comic Sans MS', sans-serif;
  transition: 0.2s ease-out;
  padding: 1px 5px;
  background: #f5f5f5;
  border-bottom: none;
  border-radius: 2px;
}

.posts-expand .post-tags a:hover {
  background: rgba(100,154,182,0.902);
  color: #fff;
  -webkit-box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  -moz-box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

//相册样式
.ImageGrid {width: 100%;max-width: 1040px;margin: 0 auto; text-align: center;}
.card {overflow: hidden;transition: .3s ease-in-out; border-radius: 8px; background-color: #ddd;}
.ImageInCard {}
.ImageInCard img {padding: 0 0 0 0;border-radius: 8px;}
//图片下显示文件名作为说明的功能
//.TextInCard {line-height: 54px; background-color: #ffffff; font-size: 24px;}

//文章区域宽度调整
.main-inner {width: 860px;}
```