# UIButton-MMBlocks

Add feature to UIButton,now your can use

@selector(addAction:(ButtonBlock)block forControlEvent:(UIControlEvents)controlEvent)

to add multiple action blocks to UIButton instead of 

@selector(addTarget:action:ForControlEvent:)

Be advised,block will retain the instance it used,it could be caused problem named " retain cycle",thus cause Memory Leak which is difficult to detect. Please be careful about memory management about blocks.

Have fun.
