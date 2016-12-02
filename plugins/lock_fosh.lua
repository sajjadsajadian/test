local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
    "kir",
	"kos",
	"مادرجنده",
	"خواهرکصه",
	"ننه سگ",
	"ننه خوک",
	"ننه کسکش",
	"ننه کس شل",
	"ننه کونی",
	"ننه کس خونی",
	"ناموس خایه لیس",
	"کیری",
	"کونی",
	"لاشی",
	"عن اقا",
	"تخمی",
	"کسکش",
	"کشکس",
	"ماییدی گارو",
	"گاییدی مارو",
	"عن توریش",
	"مادر به خطا",
	"خارکصه",
	"خارکسه",
	"خواهر کسه",
	"خواهر کصه",
	"خواهر کونی",
	"خارکونی",
	"حرومزاده",
	"حرام زاده",
	"مرده کونی",
	"دالک کسو",
	"ننه او سیکیم",
	"سیکیم هرزادین",
	"ننه او دشنه",
	"کیر",
	"سگ ناموس",
	"سیکتیر",
	"بی ناموس",
	"بی پدر",
	"گوساله",
	"gosale",
	"gusale",
	"Koskesh",
	"Bi namos",
	"fuck",
	"bitch",
	"Bi namos",
	"Lashi",
	"Jende"
  },
  run = run
}



