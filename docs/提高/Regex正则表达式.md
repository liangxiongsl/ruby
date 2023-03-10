- 正则表达式也拼写为 **regexp**
- 在正斜杠`//`之间写入模式串
- Ruby 1.9 使用 **Oniguruma** 正则表达式库，但 Ruby 2.0 使用 **Onigmo** 正则表达式库
- Onigmo是Oniguruma的一个分支库，增加了一些新功能

!!! tip
	ruby正则表达式类似于perl正则表达式


# 1.=~和#match运算符 #

- `<正则表达式> =~ <文本串>`：返回匹配到的首个子串的第一个字符的下标
- `<正则表达式>.match(<文本串>)`：返回匹配到的首个子串

```rb title="如："
puts /he/ =~ "hddehehhe"
puts /he/.match "hddehehhe"
```

![](https://pic.peo.pw/a/2023/02/05/63df3d8c3f5d3.png)

# 2.元字符，转义 #

- Metacharacters元字符：(,), (.), (?), (+), (-), (*), [,], {,}
- 元字符需要转义`\`得到原始字符

# 3.字符类 #

- 字符类的"元素"包括在`[]`内，表示**此字符类等价于这些元素任意一个**(这里的元素指的是字符)
- 字符类内包含不小于1个"元素"
- 其他语法:
	- `^`：在`[`后面紧跟`^`，表示**此字符类等价于这些元素的{==补集==}任意一个**
	- `-`：连接两个(个位)数字或字母，表示在边界之间的元素(字符)


# 4.重复 #

- 到目前为止定义的字符与单个字符匹配，在重复**元字符**的帮助下，我们可以指定它们需要发生多少次
- 这里的元字符指的是**量词**
- 量词用于修饰 **字符** 或 **字符类**或**分组**, 紧跟与他们后面

量词：

- `*`: 不小于0次
- `+`：不小于1次
- `?`: 0或1次（即可选）
- `{<数字n>}`: 整好n次
- `{<数字n>, }`: 不少于n次
- `{, <数字m>}`: 不大于m次
- `{<数字n>, <数字m>}`: 不少于n次，不大于m次

# 5.分组 #

- `()`：包含在`()`内的元素是一个整体，并为该整体提供一个**分组索引x**，该索引等于 这个整体左边的有效分组的个数+1
	- 分组后的部分可以方便被量词修饰
	- 在该分组后面可以通过`\x`引用
- `(?:)`: 在`(`后面紧跟`?:`表示**无效化**当前整体的分组索引（后面的正则表达式无法引用当前部分）
