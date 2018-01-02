Pod::Spec.new do |s|
  s.name         = "XZYModularization"    #存储库名称
  s.version      = "1.0.0"      #版本号，与tag值一致
  s.summary      = "模块化解耦"  #简介
  s.description  = "模块化解耦"  #描述
  s.homepage     = "https://github.com/740238622/XZYModularization"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
  s.author       = { "xuziyou" => "740238622@qq.com" }  #作者
  s.platform     = :ios, "9.0"                  #支持的平台和版本号
  s.source       = { :git => "https://github.com/740238622/XZYModularization.git", :tag => s.version }         #存储库的git地址，以及tag值
  s.source_files = "XZYModularization/Classes/**/*.{h,m}" #需要托管的源代码路径
  s.requires_arc = true #是否支持ARC

end