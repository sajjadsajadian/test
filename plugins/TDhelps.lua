local function run(msg, matches)
local permagbot = [[
➖➖➖➖➖➖➖
✔️لیست دستورات مدیریتی
➖➖➖➖➖➖➖ 
🔻#info :  پروفايل کاربر
〰〰〰〰〰
🔻#admins : نمايش ليست مديران گروه
〰〰〰〰〰
🔻#owner : مدير اصلي ربات
〰〰〰〰〰
🔻#modlist : لیست ناظرین
〰〰〰〰〰
🔻#bots : ليست ربات هاي گروه
〰〰〰〰〰
🔻#who :ليست همه کابران گروه به همراه ايدي
〰〰〰〰〰
🔻#id : با زدن یوزر نیم شخص ایدی شخص را دریافت کنید
mesal : #id @permag_bots
〰〰〰〰〰
🔻#promote : کاربر مورد نظر ناظر ربات میشود
▫️mesal : /promote @iduser
〰〰〰〰〰
🔻#demote : کاربر از لیست ناظرین خط میخورد
▫️mesal : /demote @iduser
〰〰〰〰〰
🔻#setrules : تعيين کردن قوانين براي گروه
▫️mesal : /setrules قوانين خود را بنويسيد
〰〰〰〰〰
🔻#rules : نمايش قوانين گروه
〰〰〰〰〰
🔻#link : نمايش لينک گروه
〰〰〰〰〰
🔻#setlink : ثبت لینک گروه
لینک گروه را بسازید سپس به ربات بدهید
〰〰〰〰〰
🔻#settings : نمايش تنظيمات گروه
〰〰〰〰〰
🔻#clean [rules|modlist|mutelist]
پاک کردن موارد بالا
▫️mesal /clean rules  اين دستور قوانين ثبت شده را پاک ميکند
〰〰〰〰〰
🔻بن کردن یک کاربر
#ban
mesal : ban 12566885
میتوانید با ایدی یا یوزر نیم کاربر را بن کنید
در صورتی که کاربر را بن کنید دیگر نمیتواند به گروه وارد شود 
#unban 
با یوزر نیم یا ایدی میتوانید کاربر را از بن خارج کنید
mesal :#unban 1235465
〰〰〰〰〰
🔻#banlist : نمايش کاربران بن شده
〰〰〰〰〰
🔻#filter : 
فیلتر کردن یک کلمه 
mesal :filter فحش
برای لغو
unfilter فحش
〰〰〰〰〰
🔻#rmsg (1-100)
حذف پیام های اخیر سوپرگروه
〰〰〰〰〰
🔻#setwlc متن
متن خوش آمد گویی به کاربر را میتوانید ست کنید
🔻#delwlc
غیرفعال کردن خوش آمد گویی
〰〰〰〰〰
➰شما میتوانید از '/' یا '!' یا '#' برای اجرای دستورات استفاده کنید.
❌ توجه کنید هیچ دستوری با ریپلی کار نمیکنداز یوزرنیم یا ایدی شخص استفاده کنید

]]
local permagbot2 = [[
➖➖➖➖➖➖➖
✔️لیست دستورات قفلی:
➖➖➖➖➖➖➖
💬 قفل تبلیغات شیشه ای و هایپرلینک
🔒#lock inline
🔒#unlock inline
پست های دارای دکمه شیشه ای یا هایپرلینک ها پاک خواهند شد
〰〰〰〰〰
💬 قفل کردن لینک
🔒#lock links
🔒#unlock links
حتی مطالبی که دارای لینک باشند حذف خواهند شد
〰〰〰〰〰
💬 قفل کردن پیام های گروه
🔒#lock tgservice
🔒#unlock tgservice
شخصی با لینک وارد گروه میشود و یا گروه را ترک میکند گروه پیغام میدهد
با قفل کردن این سرویس اعلانات خاموش خواهد شد
〰〰〰〰〰
💬 قفل کردن پست رگباری
🔒#lock flood
🔒#unlock flood
〰〰〰〰〰
💬 قفل کردن اسپم
توجه : پیام های طولانی حذف خواهند شد 
🔒#lock spam
🔒#unlock spam
〰〰〰〰〰
💬 قفل زبان عربی و فارسی
🔒#lock Arabic
🔒#unlock Arabic
〰〰〰〰〰
💬 ققفل انگلیسی
🔒#lock english
🔒#unlock english
〰〰〰〰〰
💬 قفل راستچین
زبان فارسی و عربی کار نخواهد کرد
🔒#lock rtl
🔒#unlock rtl
〰〰〰〰〰
💬 قفل اعضا
کاربران نمیتوانند وارد گروه شوند
🔒#lock member
🔒#unlock member
〰〰〰〰〰
💬 قفل استیکر
🔒#lock sticker
🔒#unlock sticker
〰〰〰〰〰
💬 قفل شماره تماس
🔒#lock contacts
🔒#unlock contacts
〰〰〰〰〰
💬 قفل ایموجی
🔒#lock emoji
🔒#unlock emoji
〰〰〰〰〰
💬 قفل موزیک
🔒#lock music
🔒#unlock music
〰〰〰〰〰
💬 قفل ریپلی
🔒#lock reply
🔒#unlock reply
〰〰〰〰〰
💬 قفل ربات
🔒 '!antibot enable: Enable Anti-bot on current chat',
🔒 '!antibot disable: Disable Anti-bot on current chat',
🔒 '!antibot allow <botId>: Allow <botId> on this chat',
🔒 '!antibot disallow <botId>: Disallow <botId> on this chat'
〰〰〰〰〰
💬 ربات سختگیرانه شود
ربات سختگیرانه میشود و کاربر خطا کار را پاک میکند - پیشنهاد میشود فعال نکنید
🔒#lock strict
🔒#unlock strict
〰〰〰〰〰
💬 قفل فوروارد
🔒#lock fwd
🔒#unlock fwd
〰〰〰〰〰
💬 قفل کردن یوزر نیم
اگر در گروه کسی یوزر نیم ارسال کند پاک خواهد شد .
🔒#lock username
🔒#unlock username
〰〰〰〰〰
💬 قفل موزیک
🔒#mute audio
🔒#unmute audio
〰〰〰〰〰
💬 قفل گیف
🔒#mute gifs
🔒#unmute gifs
〰〰〰〰〰
💬 قفل عکس
🔒#mute photo
🔒#unmute photo
〰〰〰〰〰
💬 قفل ویدیو
🔒#mute video
🔒#unmute video
〰〰〰〰〰
💬 تنظیم حداکثر پست های رگباری
🔒#setflood [value]
▫️mesal = /setflood 10 
〰〰〰〰〰
🔒#muteuser : صامت کردن يک کاربر ، جلوگيري از ارسال پيام توسط آن کاربر
▫️mesal : /muteuser @user  ya  /muteuser 16516512 
با ارسال مجدد همين دستور قفل کاربر برداشته ميشود
〰〰〰〰〰
💬 ساکت کردن همه کاربران گروه(چت ممنوع)
🔒#ساکت کردن همه
〰〰〰〰〰
💬 ساکت کردن کاربران برای زمانی مشخص(جای (X=ساعت)(Y=دقیقه)(Z=ثانیه)قرار دهید)
🔒#ساکت کردن همه Xh Ym Zs
مثلا:صامت کردن همه 2h 1m 0s
〰〰〰〰〰
💬 خارج کردن از صامت(چت آزاد)
🔒#مصوت کردن همه
〰〰〰〰〰
💬نمايش ليست موارد غير فعال شده مانند عکس و ويديو	
🔒#muteslist : 
〰〰〰〰〰
💬نمايش کاربران خفه شده 
🔒#mutelist : 

]]

local permagbot7 = [[

✔️برای دیدن دستورات مورد نظر خود مورد دلخواه را ارسال کنید :

✏️ دستورات:
☆دستورات قفلی
🎗》#قفل

☆دستورات مدیریتی
🎗》#مدیریت
☆حذف و نصب پلاگین ها
🎗》#پلاگین
==============
🎲دستورات قفل و مدیریت فقط برای مدیران ربات کار میکند 
دستورات بخش فان برای همه کاربران کار میکند
________________
✏️برای مشاهده تغییراتی که انجام داده اید از این سه دستور استفاده کنید
#settings
#muteslist
#banlist
قفل تگ و فوروارد در لیست ها نیستند دستی چک کنید
...
]]

local permagbot8 = [[

💬راهنمای نصب و حذف پلاگین ها

🔺پلاگین ها را بهتر است که از طریق اتصال به سرور حذف و نصب کنید اما برای راحتی شما عزیزان این اقدام در خود ربات گنجانده شده است .
=========================
✏️ غیرفعال کردن یک پلاگین
plug - esm plugin
mesal : plug - azan
____________________
✏️ فعال کردن یک پلاگین
plug + esm plugin
mesal : plug + azan
_____________________
✏️ حذف کردن یک پلاگین
برای حذف کردن یک پلاگین نخست آن را غیر فعال کنید و سپس دستور زیر را بزنید 

!delplugin esm plugin
mesal : !delplugin azan 
_______________________
✏️ نصب کردن یک پلاگین
برای نصب یک پلاگین ، پلاگین را در داخل گروه برای ربات ارسال کنید و سپس فایل را ریپلی کرده و دستور  زیر را بزنید 

!save esm plugin 
mesal : !save azan

توجه داشته باشید که اتولانچ ها باعث میشوند ربات به ریپلی ها پاسخ درست ندهند 
پس احتمالش وجود دارد که ربات به این دستور شما پاسخی ندهد 
از طریق سرور اقدام به نصب پلاگین کنید
________________________
✏️ دیدن پترن های  یک پلاگین
/pattern esm plugin
mesal : pattern azan


...
]]
local permagbot9 = [[

شارژ سیستم
برای شارژ ربات از دستورات زیر استفاده میشود

 "^(setexpire) (.*)$",
		"^(setexp)_(.*)_(.*)$",
	  "^(expire)$",
		"^(charge)$",
		"^[!#/](charge)$",
		"^[!#/](setexpire) (.*)$",
		"^[!#/](setexp)_(.*)_(.*)$",
	"^[!#/](expire)$",

...
]]


    if matches[1] == 'مدیریت' and is_momod(msg) then
        return permagbot  
  elseif matches[1] == 'قفل' and is_momod(msg) then
		return permagbot2
  elseif matches[1] == 'help' and is_momod(msg) or matches[1] == 'راهنما' and is_momod(msg) then
		return permagbot7
  elseif matches[1] == 'پلاگین' and is_momod(msg) then
		return permagbot8
  elseif matches[1] == 'شارژ' and is_momod(msg) then
		return permagbot9	
  end
end

return {
      description = '',
      usage = '',
      patterns = {
    '^[!#/](مدیریت)$',
    '^[!#/](قفل)$',
	'^[!#/](پلاگین)$',
    '^[!#/](help)$',
    '^[!#/](راهنما)$',
	'^[!#/](شارژ)$'
      },
      run = run,
}


