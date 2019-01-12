=======
# 基于上海自然驾驶数据的停启事件进行司机识别
>>>>>>> 0557d34be88e3767fefc0c393bfc5f347237fc6e
---
## 本项目成果
在2018 11th International Symposium on Computational Intelligence and Design (ISCID 2018) 发表了一篇EI论文：Driver Identification Based on Stop-and-Go Events Using Naturalistic Driving Data
---
### 数据预处理与可视化展示
- 数据描述：每两位司机驾驶同一辆车，共155个trips,大约共279w条数据记录
- 数据特征：每一条数据记录包括：车速、踏板角度、加速度、引擎速度等特征
- 数据缺失：原始收集的数据存在NULL 值，采用线性内插法（linear interpolation method）进行处理与赋值
- 可视化展示：部分数据特征随时间变化的一个样例图如下：
![]()
### 停启事件（stop-and-go）定义
- 在一次驾驶事件中，遇到交通拥堵或者红绿灯情况引起停启事件较为普遍，停启事件包括stop， waiting，go 三个阶段，其定义规则以及检测算法如下：
![]()
### 模型建立
- 采用随机森林（Random Forest）算法对司机进行训练，分类
1.训练输入：104个统计特征值（8个特征变量，每个特征变量具有13个统计特征值（MIN, MAX, MEAN, SD...）
2.训练输入：司机ID
- 识别准确率评判标准：AUC, 不同阶段的识别准确率（10-fold cross validation)如下图所示：
1.分类准确率：D1，D2
![classification1]()
2.分类准确率：D3，D4
![]()
3.分类准确率：D5，D6
![]()
###模型分析
- 前两个统计特征统计特征通过箱型图展示如下图
![]()
- 停启事件的三个阶段数据源可视化如下图
1. stop phase
![]()
2. waiting phase
![]()
3. go phase
![]()
- 基于不同数据源的模型分析
 * 模型I: acceleration and speed (AS) data
 * 模型II： acceleration and speed (AS) data **+** engine speed (ES) data
 * 模型III：acceleration and speed (AS) data+brake pedal (BP) data
 * 模型IV:  acceleration and speed (AS) data+engine speed (ES) data+brake pedal (BP) data

### 模型结果
* 四种模型的平均AUC值如下表格：
![]()
* 四种模型的灵敏度、特异度与准确率如下表格：
![]()
<<<<<<< HEAD
&gt; 结论：模型一分类准确率最低，但收集数据代价最低；模型四分类性能最高，但收集数据源代价较高
* 多数投票策略
 - 采用连续的5个事件进行测试，如果每5个事件的分类准确率都大于50%，则认为识别准确率为100%
 &gt; 结论：采用连续5个停启事件去预测司机ID, 模型I(only use speed data)能达到100%，测试结果如下图
 ![]()