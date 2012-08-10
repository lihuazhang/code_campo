# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

site = Site.new
site.name = 'Test China'

site.fragment.footer = <<-EOF
<div class="pull-left">
  <p>Test China 是一个小型的软件测试社区，致力于技术交流和提高软件质量。</p>
  <p>感谢 <a href="http://codecampo.com/">CodeCampo</a> 提供建站代码</p>
</div>
<div class="pull-right">
  <p><a href="#top">Back to top</a></p>
</div>
EOF

site.fragment.home_sidebar_bottom = <<-EOF
<section class="box">
  <header>Power by</header>
  <a href="http://rubyonrails.org"><img src="/assets/rails.png" /></a>
</section>
EOF

site.save
