-- --------------------------------------------------------
-- 主机:                           47.101.198.61
-- Server version:               10.3.14-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ssm_zaixiandiancan
CREATE DATABASE IF NOT EXISTS `ssm_zaixiandiancan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ssm_zaixiandiancan`;

-- Dumping structure for table ssm_zaixiandiancan.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.admin: ~2 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminid`, `username`, `password`, `realname`, `contact`, `addtime`) VALUES
	('A20190322210709793', 'zyj', '123456', '邹旖君', '18770622227', '2019-03-22'),
	('A20190322210754998', 'admin', 'admin', '管理员', '123456', '2019-03-22');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.article
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.article: ~2 rows (approximately)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`articleid`, `title`, `image`, `contents`, `addtime`, `hits`) VALUES
	('A20190119125646594', '测试测试', 'upfiles/20190119125643.jpg', '<p>七个女人的故事七个女人的故事</p>\r\n', '2019-01-19', '1'),
	('A20190119125705582', '七个女人的故事', 'upfiles/20190119125702.jpg', '<p>七个女人的故事七个女人的故事七个女人的故事七个女人的故事</p>\r\n', '2019-01-19', '2');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `filmid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.cate
DROP TABLE IF EXISTS `cate`;
CREATE TABLE IF NOT EXISTS `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.cate: ~9 rows (approximately)
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` (`cateid`, `catename`, `memo`, `addtime`) VALUES
	('C20191110210710642', '西餐', '西餐', '2019-11-10'),
	('C20191110210740929', '川湘菜', '麻辣口味', '2019-11-10'),
	('C20191110210816185', '鲁菜/北京菜', '北方', '2019-11-10'),
	('C20191110210828242', '日韩料理', '日韩', '2019-11-10'),
	('C20191110210853720', '甜点', '甜点', '2019-11-10'),
	('C20191110210915676', '海鲜', '海鲜', '2019-11-10'),
	('C20191110210928830', '快餐', '快餐', '2019-11-10'),
	('C20191110213425368', '粤菜', '粤菜', '2019-11-10'),
	('C20191110214027558', '饮品', '饮品', '2019-11-10');
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.cinema
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE IF NOT EXISTS `cinema` (
  `cinemaid` varchar(255) NOT NULL,
  `cinemaname` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cinemaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.cinema: ~9 rows (approximately)
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` (`cinemaid`, `cinemaname`, `cityid`, `address`, `contact`, `memo`) VALUES
	('C20190119125823269', '万达饭店（南昌青山湖万达广场店）', 'C20190119125813209', '青山湖区京东大道999号青山湖万达广场3层', '0791-83802295', '普通厅1.3米以下儿童可免费无座观影'),
	('C20190119125837885', '北京博纳晶品国际饭店', 'C20190320222453176', '海淀区复兴路51号凯德晶品购物中心四层', '010-88178880', '儿童无票需要3D眼镜押金'),
	('C20190119125845136', '北京沃美饭店回龙观店', 'C20190320222453176', '昌平区回龙观育知东路30号院华联购物中心4层', '010-56455166,8012', '使用3D眼镜无需缴纳押金及其他费用'),
	('C20190119125854288', '北京房山环球国际饭店', 'C20190320222453176', '房山区兴房大街38号华冠欢乐楼四楼', '010-61375512', '该影院支持线上购买小食'),
	('C20190322192353984', '江西华影国际饭店', 'C20190119125813209', '西湖区中山路天虹商场九楼', '0791-86767275', 'VIP厅为特殊影厅，1.3米以下儿童也需购票'),
	('C20190322192615833', '南昌博纳国际饭店', 'C20190119125813209', '红谷滩新区铜锣湾广场5楼', '0791-88538229', '儿童观看中国巨幕影厅需要等同成年人购票'),
	('C20190322192816110', '深影五洲国际饭店', 'C20190119125810218', '龙岗区龙城街道华润万家3楼', '0755-23255051', '支持开场前15分钟改签'),
	('C20190322202402795', '兄弟饭店（方大城店）', 'C20190119125810218', '南山区龙珠四路方大广场二号楼三楼', '0755-21621208', '提供一次性3D眼镜'),
	('C20190322202835645', '嘉禾饭店（卓悦汇店）', 'C20190119125810218', '福田区梅林街道卓悦汇购物中心L4-27号', '0755-83217930', '免费3D眼镜');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.city
DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `cityid` varchar(255) NOT NULL,
  `cityname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.city: ~3 rows (approximately)
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`cityid`, `cityname`) VALUES
	('C20190119125810218', '深圳'),
	('C20190119125813209', '南昌'),
	('C20190320222453176', '北京');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.details
DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `detailsid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `filmid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL,
  `cinemaid` varchar(255) DEFAULT NULL,
  `viewdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.details: ~0 rows (approximately)
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
/*!40000 ALTER TABLE `details` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.film
DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `filmid` varchar(255) NOT NULL,
  `filmname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `thestart` varchar(255) DEFAULT NULL,
  `theend` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`filmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.film: ~17 rows (approximately)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`filmid`, `filmname`, `image`, `cateid`, `price`, `recommend`, `thestart`, `theend`, `hits`, `sellnum`, `contents`) VALUES
	('F20191110211514222', '麻辣小龙虾', 'upfiles/20191110211346.jpg', 'C20191110210915676', '48', '是', '2019-11-10', '2019-12-31', '0', '0', '<p>麻辣小龙虾以小龙虾为主材，配以辣椒、花椒和其他香辛料制成。成菜后，色泽红亮，口味辣并鲜香。</p>\r\n'),
	('F20191110211908691', '烤生蚝', 'upfiles/20191110211820.jpg', 'C20191110210915676', '58', '是', '2019-11-03', '2019-11-30', '0', '0', '<p>烤生蚝是沿海地区的特色小吃，是用新鲜生蚝通过炭烤而成。烤生蚝的做法非常简单，只需将蒜蓉、姜末、酱等放入刚刚撬开的生蚝内，再直接放到火上烤熟即可，最大限度地保证了蚝肉的新鲜还增加了蚝的野味感觉 。</p>\r\n'),
	('F20191110212358813', '麻婆豆腐', 'upfiles/20191110212151.jpg', 'C20191110210740929', '39.9', '是', '2019-11-03', '2019-12-07', '0', '0', '<p>主要原料为配料和豆腐，材料主要有豆腐、牛肉末（也可以用猪肉）、辣椒和花椒等。麻来自花椒，辣来自辣椒，这道菜突出了川菜&ldquo;麻辣&rdquo;的特点。其口味独特，口感顺滑。</p>\r\n'),
	('F20191110212835309', '炸酱面', 'upfiles/20191110212712.jpg', 'C20191110210816185', '18', '是', '2019-10-27', '2019-11-30', '0', '0', '<p>老北京炸酱面，一道传统的中式面食，由菜码、杂酱拌面条而成。</p>\r\n'),
	('F20191110213009495', '四喜丸子', 'upfiles/20191110212848.jpg', 'C20191110210816185', '48.9', '是', '2019-06-04', '2019-12-07', '0', '0', '<p>是经典的中国传统名菜之一由四个色、香、味俱佳的肉丸组成，寓人生福、禄、寿、喜四大喜事。常用于喜宴、寿宴等宴席中的压轴菜，以取其吉祥之意。四喜丸子从外观上来说，由四个较大的肉丸以及其他辅料组成。主要用料为猪肉馅、鸡蛋、葱花等。</p>\r\n'),
	('F20191110213217727', '剁椒鱼头', 'upfiles/20191110213029.jpg', 'C20191110210740929', '89', '是', '2019-10-27', '2019-12-07', '0', '0', '<p>通常以鳙鱼鱼头、剁椒为主料，配以豆豉油、姜、葱、蒜等辅料蒸制而成。菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。</p>\r\n'),
	('F20191110213551549', '梅菜扣肉', 'upfiles/20191110213446.jpg', 'C20191110213425368', '59.9', '是', '2019-10-27', '2019-12-07', '0', '0', '<p>制作材料有五花肉、梅菜、葱白、姜片等。通常是将五花肉上汤锅煮透，加老抽，油炸上色，再切成肉片。之后加葱、姜等调料炒片刻，再下汤用小火焖烂，五花肉盛入碗里，上铺梅菜段，倒入原汤蒸透。成菜后，肉烂味香，吃起来咸中略带甜味，肥而不腻</p>\r\n'),
	('F20191110213710229', '滑蛋虾仁', 'upfiles/20191110213618.jpg', 'C20191110213425368', '78', '是', '2019-09-03', '2020-01-11', '0', '0', '<div class="para"><strong>原料：</strong>虾仁，鸡蛋，葱花。</div>\r\n\r\n<div class="para"><strong>调料：</strong>料酒，淀粉，食用盐。</div>\r\n'),
	('F20191110213856855', '草莓爆浆蛋糕', 'upfiles/20191110213823.jpg', 'C20191110210853720', '35', '是', '2019-11-12', '2019-11-22', '0', '0', '<p>草莓它是一款受欢迎程度极高的水果，长得形状又萌又可爱，颜色还总是娇艳欲滴。用草莓做各种蛋糕，草莓也总能与它们完美融合，真是美貌与口感俱佳，草莓与蛋糕相结合的可口食物。</p>\r\n'),
	('F20191110213941956', '冰淇淋', 'upfiles/20191110213910.jpg', 'C20191110210853720', '25', '是', '2019-11-13', '2019-11-15', '0', '0', '<p>冰淇淋是以饮用水、牛乳、奶粉、奶油（或植物油脂）、食糖等为主要原料，加入适量食品添加剂，经混合、灭菌、均质、老化、凝冻、硬化等工艺制成的体积膨胀的冷冻食品。</p>\r\n'),
	('F20191110214239207', '啤酒', 'upfiles/20191110214153.jpg', 'C20191110214027558', '8', '是', '2019-11-03', '2019-11-30', '0', '0', '<p>啤酒是以小麦芽和大麦芽为主要原料，并加啤酒花，经过液态糊化和糖化，再经过液态发酵而酿制成的。其酒精含量较低，含有二氧化碳，富有营养。它含有多种氨基酸、维生素、低分子糖、无机盐和各种酶。</p>\r\n'),
	('F20191110214354641', '抹茶奶茶', 'upfiles/20191110214305.jpg', 'C20191110214027558', '15', '是', '2019-10-27', '2020-01-11', '0', '0', '<p>抹茶奶茶，是一款用奶粉，抹茶粉制作的饮品</p>\r\n'),
	('F20191110214749849', '汉堡', 'upfiles/20191110214550.jpg', 'C20191110210928830', '10', '是', '2019-11-03', '2019-11-30', '0', '0', '<p>汉堡中除夹传统的牛肉饼外，还在圆面包的第二层中涂以黄油、芥末、番茄酱、沙拉酱等，再夹入番茄片、洋葱、蔬菜、酸黄瓜等食物，就可以同时吃到主副食。</p>\r\n'),
	('F20191110214906988', '咖喱盖浇饭', 'upfiles/20191110214823.jpg', 'C20191110210928830', '18', '是', '2019-11-10', '2019-11-30', '0', '0', '<p>咖喱盖浇饭是由牛肉等制作的家常菜</p>\r\n'),
	('F20191110215359299', '年糕', 'upfiles/20191110215301.jpg', 'C20191110210828242', '25', '是', '2019-10-27', '2019-12-28', '0', '0', '<p>条状年糕、甜不辣、洋葱、胡萝卜、白菜、葱。</p>\r\n'),
	('F20191110215501553', '三文鱼寿司', 'upfiles/20191110215414.jpg', 'C20191110214027558', '49', '是', '2019-10-27', '2019-12-28', '0', '0', '<div class="para">寿司饭中拌上白芝麻，盛在木盆里，铺上三文鱼肉和用酱油浸过的三文鱼籽、秋葵、蛋皮，最</div>\r\n\r\n<p>后撒上紫苏叶丝、紫菜</p>\r\n'),
	('F20191110215721969', '菲利牛排', 'upfiles/20191110215555.jpg', 'C20191110210710642', '58', '是', '2019-10-27', '2019-12-07', '0', '0', '<p>菲利牛排，美国菲力牛排一块160公克、红蕃茄碎（罐装）2粒、九层塔（切碎）2-3支、大蒜（切末）2粒、橄榄油1大匙</p>\r\n');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.topic
DROP TABLE IF EXISTS `topic`;
CREATE TABLE IF NOT EXISTS `topic` (
  `topicid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `filmid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.topic: ~0 rows (approximately)
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;

-- Dumping structure for table ssm_zaixiandiancan.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_zaixiandiancan.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`usersid`, `username`, `password`, `realname`, `sex`, `birthday`, `contact`, `regdate`) VALUES
	('U20190322185600284', 'zs', 'zhangsan', '张三', '男', '1997-01-31', '111', '2019-03-22'),
	('U20190322185753682', 'ls', 'lisi', '李四', '女', '1998-06-01', '222', '2019-03-22'),
	('U20190322185827513', 'ww', 'wangwu', '王五', '男', '1994-12-06', '333', '2019-03-22'),
	('U20190322185930190', 'll', 'liuliu', '刘六', '男', '1973-04-05', '444', '2019-03-22'),
	('U20190916090252272', 'yuanmamatou', '123456', '源码码头', '男', '2019-09-16', '13022502404', '2019-09-16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
