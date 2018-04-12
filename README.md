## WCWeakTimer
不会发生循环引用的 timer，不对 controller 强引用，controller 退出，自动关闭释放，甚至 timer 的 block 内可以写 self，都能释放。
## 使用方法
把项目 demo 中的 WCWeakTimer.h 和 WCWeakTimer.m 文件拖进项目中即可使用。
验证控制器与timer的销毁，验证不会发生循环引用。
## 效果
![](http://p2bzzkn05.bkt.clouddn.com/18-4-12/6544225.jpg)
## 分割线
点右上角的 Star 可以领红包，不信你试试︿(￣︶￣)︿
