- Ruby是一种真正的面向对象的语言，可以嵌入到`html`中
- 所有东西都是类的一个对象(数字，字符串，数组，哈希...)


OOp概念：

- `Encapsulation`封装 - 它对其他对象隐藏了类的实现细节，保护数据免受数据操纵
- `Polymorphism`多态 - 它是以不同方式表示不同数据输入的运算符或函数的能力(即，运算符或函数的`数据输入`决定其`表示方式`)
- `Inheritance`继承 - 它从预定义的类创建新类；新类继承其父类（称为超类）的行为；通过这种方式，预定义的类可以变得更加可重用和有用
- `Abstraction`抽象 - 它通过对适合问题的类进行建模来隐藏类的复杂性

###  ###

# 1.类 #

类由`class`关键字后跟类名定义，并以`end`关键字结尾

```rb
class <类名>
	# ...
end
```

# 2.对象 #

- 在 Ruby 中，一切都是一个对象
- 当我们创建对象时，它们通过方法一起通信
- 创建对象：`<类>.new(<参数列表>)`

# 3.方法 #

```
def <方法名>[(<参数列表>)]
	# ...
end
```

# 4.继承 #

用小于号`<`表示继承关系

```rb
class <子类> < <父类>
	# ...
end
```

```rb title="如："
class Parent
  def initialize
    puts "parent"
  end
end
class Child < Parent
  def initialize
    super
    puts "child"
  end
end

Child.new
```

!!! tip
	`super()`是父类的构造方法

![](https://pic.peo.pw/a/2023/02/05/63df39732a1e8.png)

# 5.构造函数 #

创建对象时会自动调用构造函数`initialize()`, 它们不返回任何值

!!! tip
	构造函数实质上就是回调方法
