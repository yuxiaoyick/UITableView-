# UITableView-
UITableView 移动到指定的区头位置的dome
今天碰到一个让UITableView 移动到指定位置的小需求，但并不是移动到指定cell，而是section。写了个demo看下效果，然后上代码：

![sfadsf](http://upload-images.jianshu.io/upload_images/1084782-26aa2865ebe68f5a.gif?imageMogr2/auto-orient/strip)


核心代码是：

NSInteger selSection = btn.tag-10;

NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:selSection];

[self.tableview scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];


