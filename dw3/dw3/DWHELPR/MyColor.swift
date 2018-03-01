

import UIKit

public class MyColor
{
    public var COLOR : UIColor {
        get{
            return self.RGB_C(r : 100  , g :0 , b:0);
        }
    }
    
    public func RGB_I(r:Int , g:Int ,b:Int) ->UIColor
    {
        return UIColor.init(red: CGFloat.init(r) / 255.00, green: CGFloat.init(g) / 255.00, blue: CGFloat.init(b) / 255.00, alpha: 1.0);
    }
    
    public func RGB_C(r:CGFloat,g:CGFloat,b:CGFloat) ->UIColor
    {
        return UIColor.init(red: r / 255.00, green: g / 255.00, blue: b / 255.00, alpha: 1.00);
    }
    
    public func RGB_V(value : Int) -> UIColor
    {
        return RGB_C(r: CGFloat.init((value&0xFF0000)>>16) , g: CGFloat.init((value&0xFF00)>>8), b:  CGFloat.init((value&0xFF)));
    }
    //红色
    /** 薄雾玫瑰*/
    public  var mistyRose : UIColor {
        return MyColor().RGB_V(value: 0xFFE4E1);
    }
    /** 浅鲑鱼色*/
    public  var lightSalmon : UIColor {
        return MyColor().RGB_V(value: 0xFFA07A);
    }
    /** 淡珊瑚色*/
    public  var lightCoral : UIColor {
        return MyColor().RGB_V(value: 0xF08080);
    }
    /** 鲑鱼色*/
    public  var salmonColor : UIColor {
        return MyColor().RGB_V(value: 0xFA8072);
    }
    /** 珊瑚色*/
    public  var coralColor : UIColor {
        return MyColor().RGB_V(value: 0xFF7F50);
    }
   /** 番茄*/
    public  var tomatoColor : UIColor {
        return MyColor().RGB_V(value: 0xFF6347);
    }
    /** 橙红色*/
    public  var orangeRed : UIColor {
        return MyColor().RGB_V(value: 0xFF4500);
    }
    /** 印度红*/
    public  var indianRed : UIColor {
        return MyColor().RGB_V(value: 0xCD5C5C);
    }
   /** 猩红*/
    public  var crimsonColor : UIColor {
        return MyColor().RGB_V(value: 0xDC143C);
    }
    /** 耐火砖*/
    public  var fireBrick : UIColor {
        return MyColor().RGB_V(value: 0xB22222);
    }
    //黄色
    /** 玉米色*/
    public  var cornColor : UIColor {
        return MyColor().RGB_V(value: 0xFFF8DC);
    }
    /** 柠檬薄纱*/
    public  var LemonChiffon : UIColor {
        return MyColor().RGB_V(value: 0xFFFACD);
    }
    /** 苍金麒麟*/
    public  var paleGodenrod : UIColor {
        return MyColor().RGB_V(value: 0xEEE8AA);
    }
    /** 卡其色*/
    public  var khakiColor : UIColor {
        return MyColor().RGB_V(value: 0xF0E68C);
    }
    /** 金色*/
    public  var goldColor : UIColor {
        return MyColor().RGB_V(value: 0xFFD700);
    }
    /** 雌黄*/
    public  var orpimentColor : UIColor {
        return MyColor().RGB_V(value: 0xFFC64B);
    }
    /** 藤黄*/
    public  var gambogeColor : UIColor {
        return MyColor().RGB_V(value: 0xFFB61E);
    }
    /** 雄黄*/
    public  var realgarColor : UIColor {
        return MyColor().RGB_V(value: 0xE9BB1D);
    }
    /** 金麒麟色*/
    public  var goldenrod : UIColor {
        return MyColor().RGB_V(value: 0xDAA520);
    }
    /** 乌金*/
    public  var darkGold : UIColor {
        return MyColor().RGB_V(value: 0xA78E44);
    }
    
    //绿色 
    /** 苍绿*/
    public  var paleGreen : UIColor {
        return MyColor().RGB_V(value: 0x98FB98);
    }
    /** 淡绿色*/
    public  var lightGreen : UIColor {
        return MyColor().RGB_V(value: 0x90EE90);
    }
    /** 春绿*/
    public  var springGreen : UIColor {
        return MyColor().RGB_V(value: 0x2AFD84);
    }
    /** 绿黄色*/
    public  var greenYellow : UIColor {
        return MyColor().RGB_V(value: 0xADFF2F);
    }
    /** 草坪绿*/
    public  var lawnGreen : UIColor {
        return MyColor().RGB_V(value: 0x7CFC00);
    }
    /** 酸橙绿*/
    public  var limeColor : UIColor {
        return MyColor().RGB_V(value: 0x00FF00);
    }
   /** 森林绿*/
    public  var forestGreen : UIColor {
        return MyColor().RGB_V(value: 0x228B22);
    }
    /** 海洋绿*/
    public  var seaGreen : UIColor {
        return MyColor().RGB_V(value: 0x2E8B57);
    }
    /** 深绿*/
    public  var darkGreen : UIColor {
        return MyColor().RGB_V(value: 0x006400);
    }
    /** 橄榄(墨绿)*/
    public  var olive : UIColor {
        return MyColor().RGB_V(value: 0x556B2F);
    }
    
    //青色系
    /** 淡青色*/
    public  var lightCyan : UIColor {
        return MyColor().RGB_V(value: 0xE1FFFF);
    }
    /** 苍白绿松石*/
    public  var paleTurquoise : UIColor {
        return MyColor().RGB_V(value: 0xAFEEEE);
    }
    /** 绿碧*/
    public  var aquamarine : UIColor {
        return MyColor().RGB_V(value: 0x7FFFD4);
    }
    /** 绿松石*/
    public  var turquoise : UIColor {
        return MyColor().RGB_V(value: 0x40E0D0);
    }
    /** 适中绿松石*/
    public  var mediumTurquoise : UIColor {
        return MyColor().RGB_V(value: 0x48D1CC);
    }
    /** 美团色*/
    public  var meituanColor : UIColor {
        return MyColor().RGB_V(value: 0x2BB8AA);
    }
    /** 浅海洋绿*/
    public  var lightSeaGreen : UIColor {
        return MyColor().RGB_V(value: 0x20B2AA);
    }
    /** 深青色*/
    public  var darkCyan : UIColor {
        return MyColor().RGB_V(value: 0x008B8B);
    }
    /** 水鸭色*/
    public  var tealColor : UIColor {
        return MyColor().RGB_V(value: 0x008080);
    }
    /** 深石板灰*/
    public  var darkSlateGray : UIColor {
        return MyColor().RGB_V(value: 0x2F4F4F);
    }
    
    //蓝色
    /** 天蓝色*/
    public  var skyBlue : UIColor {
        return MyColor().RGB_V(value: 0xE1FFFF);
    }
    /** 淡蓝*/
    public  var lightBLue : UIColor {
        return MyColor().RGB_V(value: 0xADD8E6);
    }
    /** 深天蓝*/
    public  var deepSkyBlue : UIColor {
        return MyColor().RGB_V(value: 0x00BFFF);
    }
    /** 道奇蓝*/
    public  var doderBlue : UIColor {
        return MyColor().RGB_V(value: 0x1E90FF);
    }
    /** 矢车菊*/
    public  var cornflowerBlue : UIColor {
        return MyColor().RGB_V(value: 0x6495ED);
    }
    /** 皇家蓝*/
    public  var royalBlue : UIColor {
        return MyColor().RGB_V(value: 0x4169E1);
    }
    /** 适中的蓝色*/
    public  var mediumBlue : UIColor {
        return MyColor().RGB_V(value: 0x0000CD);
    }
    /** 深蓝*/
    public  var darkBlue : UIColor {
        return MyColor().RGB_V(value: 0x00008B);
    }
    /** 海军蓝*/
    public  var navyColor : UIColor {
        return MyColor().RGB_V(value: 0x000080);
    }
    /** 午夜蓝*/
    public  var midnightBlue : UIColor {
        return MyColor().RGB_V(value: 0x191970);
    }
    
    //紫色
    /** 薰衣草*/
    public  var lavender : UIColor {
        return MyColor().RGB_V(value: 0xE6E6FA);
    }
    /** 蓟*/
    public  var thistleColor : UIColor {
        return MyColor().RGB_V(value: 0xD8BFD8);
    }
    /** 李子*/
    public  var plumColor : UIColor {
        return MyColor().RGB_V(value: 0xDDA0DD);
    }
    /** 紫罗兰*/
    public  var violetColor : UIColor {
        return MyColor().RGB_V(value: 0xEE82EE);
    }
    /** 适中的兰花紫*/
    public  var mediumOrchid : UIColor {
        return MyColor().RGB_V(value: 0xBA55D3);
    }
    /** 深兰花紫*/
    public  var darkOrchid : UIColor {
        return MyColor().RGB_V(value: 0x9932CC);
    }
    /** 深紫罗兰色*/
    public  var darkVoilet : UIColor {
        return MyColor().RGB_V(value: 0x9400D3);
    }
    /** 泛蓝紫罗兰*/
    public  var blueViolet : UIColor {
        return MyColor().RGB_V(value: 0x8A2BE2);
    }
    /** 深洋红色*/
    public  var darkMagenta : UIColor {
        return MyColor().RGB_V(value: 0x8B008B);
    }
    /** 靛青*/
    public  var indigoColor : UIColor {
        return MyColor().RGB_V(value: 0x4B0082);
    }

    //灰色系
    /** 白烟*/
    public  var whiteSmoke : UIColor {
        return MyColor().RGB_V(value: 0xF5F5F5);
    }
    /** 鸭蛋*/
    public  var duckEgg : UIColor {
        return MyColor().RGB_V(value: 0xE0EEE8);
    }
    /** 亮灰*/
    public  var gainsboroColor : UIColor {
        return MyColor().RGB_V(value: 0xDCDCDC);
    }
    /** 蟹壳青*/
    public  var carapaceColor : UIColor {
        return MyColor().RGB_V(value: 0xBBCDC5);
    }
    /** 银白色*/
    public  var silverColor : UIColor {
        return MyColor().RGB_V(value: 0xC0C0C0);
    }
    /** 暗淡的灰色*/
    public  var dimGray : UIColor {
        return MyColor().RGB_V(value: 0x696969);
    }
    
    //白色
    /** 海贝壳*/
    public  var seaShell : UIColor {
        return MyColor().RGB_V(value: 0xFFF5EE);
    }
    /** 雪*/
    public  var snowColor : UIColor {
        return MyColor().RGB_V(value: 0xFFFAFA);
    }
    /** 亚麻色*/
    public  var linenColor : UIColor {
        return MyColor().RGB_V(value: 0xFAF0E6);
    }
    /** 花之白*/
    public  var floralWhite : UIColor {
        return MyColor().RGB_V(value: 0xFFFAF0);
    }
    /** 老饰带*/
    public  var oldLace : UIColor {
        return MyColor().RGB_V(value: 0xFDF5E6);
    }
    /** 象牙白*/
    public  var ivoryColor : UIColor {
        return MyColor().RGB_V(value: 0xFFFFF0);
    }
    /** 蜂蜜露*/
    public  var honeydew : UIColor {
        return MyColor().RGB_V(value: 0xF0FFF0);
    }
    /** 薄荷奶油*/
    public  var mintCream : UIColor {
        return MyColor().RGB_V(value: 0xF5FFFA);
    }
    /** 蔚蓝色*/
    public  var azureColor : UIColor {
        return MyColor().RGB_V(value: 0xF0FFFF);
    }
    /** 爱丽丝蓝*/
    public  var aliceBlue : UIColor {
        return MyColor().RGB_V(value: 0xF0F8FF);
    }
    /** 幽灵白*/
    public  var ghostWhite : UIColor {
        return MyColor().RGB_V(value: 0xF8F8FF);
    }
    /** 淡紫红*/
    public  var lavenderBlush : UIColor {
        return MyColor().RGB_V(value: 0xFFF0F5);
    }
    /** 米色*/
    public  var beigeColor : UIColor {
        return MyColor().RGB_V(value: 0xF5F5DD);
    }

    //棕色系
    /** 黄褐色*/
    public  var tanColor : UIColor {
        return MyColor().RGB_V(value: 0xD2B48C);
    }
    /** 玫瑰棕色*/
    public  var rosyBrown : UIColor {
        return MyColor().RGB_V(value: 0xBC8F8F);
    }
    /** 秘鲁*/
    public  var peruColor : UIColor {
        return MyColor().RGB_V(value: 0xCD853F);
    }
    /** 巧克力*/
    public  var chocolateColor : UIColor {
        return MyColor().RGB_V(value: 0xD2691E);
    }
    /** 古铜色*/
    public  var bronzeColor : UIColor {
        return MyColor().RGB_V(value: 0xB87333);
    }
    /** 黄土赭色*/
    public  var siennaColor : UIColor {
        return MyColor().RGB_V(value: 0xA0522D);
    }
    /** 马鞍棕色*/
    public  var saddleBrown : UIColor {
        return MyColor().RGB_V(value: 0x8B4513);
    }
    /** 土棕*/
    public  var soilColor : UIColor {
        return MyColor().RGB_V(value: 0x734A12);
    }
    /** 栗色*/
    public  var maroonColor : UIColor {
        return MyColor().RGB_V(value: 0x800000);
    }
    /** 乌贼墨棕*/
    public  var inkfishBrown : UIColor {
        return MyColor().RGB_V(value: 0x5E2612);
    }
    
    //粉色
    /** 水粉*/
    public  var waterPink : UIColor {
        return MyColor().RGB_V(value: 0xF3D3E7);
    }
    /** 藕色*/
    public  var lotusRoot : UIColor {
        return MyColor().RGB_V(value: 0xEDD1D8);
    }
    /** 浅粉红*/
    public  var lightPink : UIColor {
        return MyColor().RGB_V(value: 0xFFB6C1);
    }
    /** 适中的粉红*/
    public  var mediumPink : UIColor {
        return MyColor().RGB_V(value: 0xFFC0CB);
    }
    /** 桃红*/
    public  var peachRed : UIColor {
        return MyColor().RGB_V(value: 0xF47983);
    }
    /** 苍白的紫罗兰红色*/
    public  var paleVioletRed : UIColor {
        return MyColor().RGB_V(value: 0xDB7093);
    }
    /** 深粉色*/
    public  var deepPink : UIColor {
        return MyColor().RGB_V(value: 0xFF1493);
    }
}
