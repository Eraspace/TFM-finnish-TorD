admins={"Tigrounette", "Melibellule", "Mousetat", "Eraspace"}
-- Muista laitta "," jokaisen nimen väliin!


tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@6411544")

players={} -- respawn paikka on 400,320
p={}
timestamp=os.time()
numplayers=0

begin=false
answerer="lol"
questioner="lol"
question="lol"
ans="lol"
new=false
restart=false
choose=false
start=true
choosey=false
skip=false
message=""
others={}
summonobject=false
timestamplol={}
answererold=""
one=false
dance=false
mapcomplete=false

truth={}--voit seurata formattia 'truth[numero]="kysymys"'
truth[1]="Kuka on sinun ihastuksesi tässä pelissä?"
truth[2]="Mikä on lempiruokasi?"
truth[3]="Kuka on sinun suosikkihenkilösi tässä pelissä?"
truth[4]="Mitä muita pelejä pelaat"
truth[5]="Mitä haluaisit olla isona?"
truth[6]="Oletko imenyt peukkuasi aikasemmin?"
truth[7]="Mitä tuotemerkin puhelimen teillä on tällä hetkellä?"
truth[8]="Oletko koskaan farted edessä ystävien tai opettajien tosielämäassä?"
truth[9]="Jos voisit hakata Transformice, mitä tekisit?"
truth[10]="Jos sinun pitäisi vailita, mikä on suoskki turkkisi Transformicessa?"
truth[11]="Miksi pidät Transformice?"
truth[12]="Mitä vihaat eniten luonteessasi tai ulkonäössäsi"
truth[13]="Mitä rakastat eniten luonteessasi tai ulkonäössäsi?"
truth[14]="Kerro meille rakastatko vai vihaatko itseäsi enemmän, ja miksi."
truth[15]="Miksi pidät nykyisestä ihastuksestasi oikeassa elämässä, persoonallisista ominaisuuksista ja fyysisistä ominaisuuksista?"
truth[16]="Kerro meille miksi vihaat vihaamaasi henkilöä IRL persoonallisissa ominaisuuksissa."
truth[17]="Jos sinulla olisi loputon määrä juustoja ja mansikoita, mitä tavaroita ostaisit kaupasta?"
truth[18]="Kumman valitsisit, miljoona rahaa ilmaiseksi vai pitempään elämisen?"
truth[19]="Mikä on sinun suosikki lautapeli?"
truth[20]="Mikä on pisin aikasi ilman että olet käynyt suihkussa?"
truth[21]="Oletko koskaan syönyt hyönteisen ennen?"
truth[22]="Jos voisit olla mikä tahansa superrikollinen, kuka olisit?"
truth[23]="Jos voisit olla mikä tahansa supersankari, kuka olisit?"
truth[24]="Jos voisit olla hyönteinen, mikä olisit?"
truth[25]="Kuka on suosikkisi henkilöstö? (Admin/Moderaattori/Sentinels/Mapcrew/Funcorp)"
truth[26]="Mikä on vaikutelma minulle? Pidätkö minua?"
truth[27]="Oletko koskaan huijannut missään kokeessa?"
truth[28]="Kuinka monta poikaystävää/tyttöystävää sinulla on ollut?"
truth[29]="Jos olisit biljonääri, miten käyttäisit aikasi?"
truth[30]="Jos voisit olla jonkin yrityksen pomo päivän ajan, mitä tekisit?"
truth[31]="Keneen julkkikseen sinulla on pakkomielle?"
truth[32]="Mikä on suosikkijoukkueesi / soitin?"
truth[32]="Mikä on suosikkikappaleesi juuri nyt?"
truth[33]="Jos olisit saarella yhden ihmisen kanssa, kuka haluaisit henkilön olevan? (Henkilön täytyy olla täällä huoneessa)"
truth[34]="Jos sinun pitäisi naida, suudella, halata, lyödä ja tappaa joku tässä huoneessa, kuka se olisi? (jos täällä on alle 5 hiirtä voit käyttää nimen useammin)"
truth[35]="Olisitko mieluummin rikas mutta tyhmä vai köyhä mutta fiksu?"
truth[36]="Oletko lähemmäksi äitisi tai isäsi?"
truth[37]="Pidätkö ketään paitsi sielunveljesi? Jos kyllä, kuka?"

dare={}--voit seurata formattia 'dare[numero]="tehtävä"'
dare[1]="Haastan sinut menemään EN/E2/FN huoneeseen 2 ja spämmäämään tätä viestiä 10 kertaa: CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE."
dare[2]="Haastan sinut kuiskaamaan moderaattorille kirosanan."
dare[3]="Haastan sinut kertomaan ihastuksellesi tai kenelle tahansa tässä huoneessa että rakasat häntä juurinyt."
dare[4]="Haastan sinut menemään EN/E2/FN huoneeseen 2 ja spämmäämään tätä viestiä 10 kertaa: I'M FLOODING REPORT ME!."
dare[5]="Haastan sinut reporttaamaan moderaattorin hacksaamisesta."
dare[6]="Haastan sinut luomaan accountin, joka on samanlainen kuin paikalla olevan moderaattorin ja kiuskaamaan modderaattoille: Hallo buddy!"
dare[7]="Haastan sinut kertomaan sinun oikean nimesi jokaiselle chatissa."
dare[8]="Haastan sinut ottamaan kuvan itsestäsi IRL ja lähettämään sen jokaisen nähtäväksi."
dare[9]="Haastan sinut menemään mihin tahansa #utility huoneeseen missä on vähintään kolme ihmistä ja rikkomaan sen."
dare[10]="Haastan sinut antaamaan minulle, kyselijälle kaikki pallosi mitä sinulla on tavaraluettelossasi, jos sinulla siis on."
dare[11]="Haastan sinut kirjautumaan ulos-ja sisään uudelleen, nyt heti."
dare[12]="Haastan sinut sanomaan kuka olisi sinun todennäköisin ihastuksesi niistä pelaajista, joiden kanssa olet samassa huoneessa."
dare[13]="Haastan sinut antamaan minulle kaikki selfiesi juuri nyt, jos sinulla on munaa tehdä se vaihdon kanssa."
dare[14]="Haastan sinut suorittamaan tämän kentän ilman huijaamista."
dare[15]="Haastan sinut kirjoittamaan 'RAAKASTAN SINUA (nimi)' 30 kertaa jollekkin henkilolle huoneessa/heimossa huoneen chatissa tai heimon chatissa."
dare[16]="Haastan sinut menemään naimisiin läheisimmän kaverisi kanssa, jos et ole jo naimisissa."
dare[17]="Haastan sinut antamaan minulle, kysyjälle, jokaisen lumipallon joka sinulla on tavaroisassi, jos sinulla on yhtään."
dare[18]="Haastan sinut kuiskaamaan moderaattorille, 'Ban me!'."
dare[19]="Haastan sinut pussaamaan ja halaamaan jotain henkilöä tässä huoneessa joka on samaa sukupuolta."
dare[20]="Haastan sinut spämmäämään 'I AM A DUMB COWARD!' 10 kertaa tämän huoneen chatissa."
dare[21]="Haastan sinut kysymään ihastustasi ulos."
dare[22]="Haastan sinut spämmäämään moderaattorille, 'HEY <nimi>, I'M DAD'."
dare[23]="Haastan sinut menemään johonkin huoneeseen EN/EN2/FN ja kirjoittamaan 'I WANT WAFFLES' 5 kertaa."
dare[24]="Haastan sinut menemään cafeen ja tekemään aiheen: 'RAKASTAN UNDERTALE'."
dare[25]="Haastan sinut menemään /room village1 ja sanomaan tuntemattomale henkilölle siellä, 'OMG RAKASTAN SINUA (nimi) OTA MINUT KAVERIKSI OLEN AINA HALUNNUT TAVATA SINUT OMG!!! *-*'"

function eventNewPlayer(name)
	ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Kirjoita !join liittyäksesi peliin</font></p></b>",name,50,365,700,40,0x324650,0x212F36,0.8,true)
	ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Totuus vai tehtävä</font></p><font size='20' color='#FF0000'><b>Pelistä</b></font><font size='15'>\nEvery game, someone will have the chance to be the Asker. On the first popup as an asker, you can click 'Yes' to randomize a answerer, or 'No' to type a particular person in room. This is similar for almost all other popups, where 'Yes' is for random and 'No' is for typing out yourself. If you are the asker, you can also type '#(number)' to give the question number of the truth/dare in the random list. There are currently <b>"..#truth.."</b> random truths and <b>"..#dare.."</b> random dares, so if you have any feedback feel free to tell me.\n<font color='#00FF00'>Created by Mousetat</font> \nForum Thread: atelier801.com//topic?f=6&t=814350&p=1 \n <font color='#00FF00'>Translated script by Eraspace</font></font><font face='impact' size='30'>Type !commands to see the list of commands</font>",name,100,50,600,true)
	p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
	local i=0
	while i<=#admins do
	if name==admins[i] then
		p[name].admin=true
	end
	i=i+1
	end
end

function eventNewGame()
	ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Welcome to Totuus vai tehtävä!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
	ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Totuus vai tehtävä</font></p><font size='20' color='#FF0000'><b>About the game</b></font><font size='15'>\nEvery game, everyone will have the chance to be the Asker. On the first popup as an asker, u can click 'Yes' to randomize a answerer, or 'No' to type a particular person in room. This is similar for almost all other popups, where 'Yes' is for random and 'No' is for typing out yourself. If you are the asker, you can also type '#(number)' to give the question number of the truth/dare in the random list. There are currently <b>"..#truth.."</b> random truths and <b>"..#dare.."</b> random dares, so if you have any feedback feel free to tell me.\n<font color='#00FF00'>Created by Mousetat</font> \nForum Thread: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Type !commands to see the list of commands</font>",nil,100,50,600,true)
	answerer=""
	questioner=""
	begin=false
	start=true
	numplayers=0
	count=1
	one=false
	local i=0
	for name,player in pairs(tfm.get.room.playerList) do
		p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
		players[count]=name
		timestamp=os.time()
		numplayers=numplayers+1
		count=count+1
		p[name].spectator=false
		p[name].questioners=false
		local i=0
		while i<=#admins do
		if name==admins[i] then
			p[name].admin=true
		end
		i=i+1
		end
	end
	system.disableChatCommandDisplay("t", hidden)
    system.disableChatCommandDisplay("admin", hidden)
    system.disableChatCommandDisplay("restart", hidden)
    system.disableChatCommandDisplay("ban", hidden)
    system.disableChatCommandDisplay("skip", hidden)
    system.disableChatCommandDisplay("watch", hidden)
    system.disableChatCommandDisplay("unban", hidden)
    system.disableChatCommandDisplay("unadmin", hidden)
	end

function eventChatCommand(name,command)
	local IDList = {}
	if command=="clear" then
		for id, object in pairs(tfm.get.room.objectList) do
			table.insert(IDList, id)
		end
		for i, id in pairs(IDList) do
			tfm.exec.removeObject(id)
		end
	end
	if command=="s" and p[name].admin==true then
		tfm.exec.setShaman(name)
	elseif command=="dance" and p[name].admin==true then
		for name,player in pairs(tfm.get.room.playerList) do
			p[name].randomerino=math.random(1,3)
		end
		dance=true
	elseif command=="danceoff" and p[name].admin==true then
		dance=false
	elseif command=="mods" then
		message=""
		for k,v in pairs(tfm.get.room.playerList) do
			if p[k].admin==true then
				message=message..tostring(k)..", "
			end
		end
	ui.updateTextArea(1, "<p align='center'><b><font size='15'>The moderators are: "..string.sub(message,1,-3)..".</font></b></p>", name)
	elseif command=="new" and name==questioner then
		if p[name].new==false then
		print("true")
		tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
		answererold=answerer
		answerer=""
		choose=true
		p[name].new=true
		else
		ui.updateTextArea(1, "<p align='center'><b><font size='30'>You can only !new ONCE</font></b></p>", nil)
		end
	elseif command=="join" and p[name].spectator==true then
		if p[name].ban==false then
			ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." joined the game! :D</font></b></p>", nil)
			tfm.exec.respawnPlayer(name)
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			p[name].spectator=false
			table.insert(players,name)
		elseif p[name].ban==true then
			ui.updateTextArea(1, "<p align='center'><b><font size='30'>You have been banned, so u cannot join the game :(</font></b></p>", name)
		end
	elseif command=="skip" and p[name].admin==true then
		timestamp=os.time()
		skip=true
	elseif string.sub(command,0,1) == "t" and p[name].admin==true then
		message=string.sub(command,3)
		ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.."</font></b></p>", nil)
	elseif command=="restart" and p[name].admin==true then
		tfm.exec.newGame("@6411544")
	elseif string.sub(command,0,5)=="watch"  then
		if string.sub(command,7)=="" then
			p[name].spectator=true
				ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." is now a spectator :(</font></b></p>", nil)
				ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Type !join to join the game.</font></p></b>",name)
			if name==questioner or name==answerer then
				questioner=""
				answerer=""
				tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
				tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
				timestamp=os.time()
				skip=true
			end
			for i=1,#players do
				if players[i]==name then
					table.remove(players,i)
				end
			end
		else
			if p[name].admin==true then
				message=string.sub(command,7)
				message=string.upper(string.sub(message,0,1))..string.sub(message,2)
				for k,v in pairs(tfm.get.room.playerList) do
					if k==message and p[k].spectator==false then
						if k==questioner or k==answerer then
							skip=true
							timestamp=os.time()
						end
						p[k].spectator=true
						ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..k.." is now a spectator :(</font></b></p>", nil)
						ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Type !join to join the game.</font></p></b>",k)
						for i=1,#players do
							if players[i]==k then
								table.remove(players,i)
							end
						end
					end
				end
			end
		end
	elseif command=="help" then
		ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Totuus vai tehtävä</font></p><font size='20' color='#FF0000'><b>About the game</b></font><font size='15'>\nEvery game, everyone will have the chance to be the Asker. On the first popup as an asker, u can click 'Yes' to randomize a answerer, or 'No' to type a particular person in room. This is similar for almost all other popups, where 'Yes' is for random and 'No' is for typing out yourself. If you are the asker, you can also type '#(number)' to give the question number of the truth/dare in the random list. There are currently <b>"..#truth.."</b> random truths and <b>"..#dare.."</b> random dares, so if you have any feedback feel free to tell me.\n<font color='#00FF00'>Created by Mousetat</font> \nForum Thread: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Type !commands to see the list of commands</font>",name,100,50,600,true)
	elseif command=="commands" then
	if p[name].admin==true then
	ui.addPopup(999,0,"<b><font size='20' color='#FFFF00'>COMMANDS</font>\n!join to join the game if you are spectating or you just came into the room.\n!watch to be a spectator and get ignored in the game.\n!mods to see the current moderators in the room.\n!clear to clear all shaman objects.\n!new to get a new answerer(only new ONCE)(asker only)\n!help to see the information about game\n<font size='20' color='#EB1D51'>ADMIN COMMANDS</font>\n!watch (username) to make the username a spectator.\n!s to become shaman\n!admin (username) to admin a person\n!dance/!danceoff to toggle dancing\n!t (message) to speak to all\n!restart to restart game if bugged\n!skip to skip a person's turn\n!ban (username) (reason) to ban a person(highly not advised)</b>",name,100,50,600,true)
	elseif p[name].admin==false then
	ui.addPopup(999,0,"<b><font size='20' color='#FFFF00'>COMMANDS</font>\n!join to join the game if you are spectating or you just came into the room.\n!watch to be a spectator and get ignored in the game.\n!mods to see the current moderators in the room.\n!clear to clear all shaman objects.\n!new to get a new answerer(only new ONCE)(asker only)\n!help to see the information about game",name,100,50,600,true)
	end
	elseif string.sub(command,0,3)=="ban" and p[name].admin==true then
		local c=0
		local reason=""
		if string.find(command," ",5)==nil then
			message=string.sub(command,5)
		else
			c=string.find(command," ",5)
			print(c)
			message=string.sub(command,5,c-1)
			reason=string.sub(command,c+1)
			print(reason)
		end
		message=string.upper(string.sub(message,0,1))..string.sub(message,2)
		for k,v in pairs(tfm.get.room.playerList) do
			if message==k then
				ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been banned for 9999 hours. Reason: "..reason.."</font></b></p>", nil)
				p[message].ban=true
				tfm.exec.killPlayer(k)
				for i=1,#players do
					if players[i]==k then
						table.remove(players,i)
					end
				end
			end
		end
	elseif string.sub(command,0,5)=="unban" and p[name].admin==true then
		message=string.sub(command,7)
		message=string.upper(string.sub(message,0,1))..string.sub(message,2)
		for k,v in pairs(tfm.get.room.playerList) do
			if message==k then
				ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been unbanned.</font></b></p>", nil)
				p[message].ban=false
				tfm.exec.respawnPlayer(k)
				table.insert(players,k)
			end
		end
	elseif string.sub(command,0,5)=="admin" and p[name].admin==true then
		message=string.sub(command,7)
		message=string.upper(string.sub(message,0,1))..string.sub(message,2)
		for k,v in pairs(tfm.get.room.playerList) do
			if message==k then
				ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is now a moderator. Congrats!</font></b></p>", nil)
				p[message].admin=true
			end
		end
	elseif string.sub(command,0,7)=="unadmin" and p[name].admin==true then
		message=string.sub(command,9)
		message=string.upper(string.sub(message,0,1))..string.sub(message,2)
		for k,v in pairs(tfm.get.room.playerList) do
			if message==k then
				ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is demoded. What a waste!</font></b></p>", nil)
				p[message].admin=false
			end
		end
	end
end

function eventLoop(time,remaining)
	if time>1000 then
	if dance==true then
		for name,player in pairs(tfm.get.room.playerList) do
			if p[name].randomerino==1 then
				tfm.exec.playEmote(name,0,nil)
			elseif p[name].randomerino==2 then
				tfm.exec.playEmote(name,15,nil)
			elseif p[name].randomerino==3 then
				tfm.exec.playEmote(name,16,nil)
			end
		end
	end
	numplayers=#players
	for k,v in pairs(tfm.get.room.playerList) do
		if p[k].ban==true then
			ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>You have been banned. :(</font></p></b>",k)
		elseif p[k].spectator==true then
			ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Type !join to join the game.</font></p></b>",k)
		end
	end
	local IDList={}
	for id, object in pairs(tfm.get.room.objectList) do
		table.insert(IDList, id)
	end
	for i, id in pairs(IDList) do
		if others[id].summonobject==true and timestamplol[id]<os.time()-3000 then
			tfm.exec.removeObject(id)
			others[id].summonobject=false
		end
	end
	if numplayers<2 then
		one=true
	else
		one=false
	end
	if one==true then
		ui.updateTextArea(1, "<p align='center'><b><font size='15'>Minimum of 2 players are needed for this game to proceed.</font></b></p>", nil)
		timestamp=os.time()-4000
	elseif timestamp < os.time()-10000 and begin==false then
		timestamp=os.time()
		begin=true
		restart=false
		ui.updateTextArea(1, "<p align='center'><b><font size='30'>Let's Begin the Game! </font></b></p>", nil)
		for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
		end
	elseif timestamp < os.time()-5000 and begin==false then
		local i=1
		local long=""
		local hname=""
		while i<=numplayers do
			hname=players[i]
			if p[hname].spectator==false and tfm.get.room.playerList[hname].isDead==false and p[hname].out==false then
				long=long..tostring(players[i])..", "
			end
			i=i+1
		end
		ui.updateTextArea(1, "<p align='center'><b><font size='15'>The participating players are: "..string.sub(long,1,-3)..".</font></b></p>", nil)
	elseif timestamp < os.time()-3000 and begin==false and restart==true then
		ui.updateTextArea(1, "<p align='center'><b><font size='20'>Since everyone had their turn, I'll restart the game...", nil)
	end
	if begin==true then
		if timestamp < os.time()-3000 and start==true then
			tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
			tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
			answerer=""
			questioner=""
			local j=1
			local i=0
			while j<=numplayers do
				pname=players[j]
				if p[pname].questioners==false and tfm.get.room.playerList[pname].isDead==false and p[pname].spectator==false and p[pname].out==false then
					i=i+1
				end
				j=j+1
			end
			if i>0 then
				eventTruthOrDare()
			else
				local j=1
			while j<=numplayers do
				local name=players[j]
				p[name].questioners=false
				j=j+1
			end
			restart=true
			timestamp=os.time()
			begin=false
		end
	end
	if choose==true and one==false then
		rand=math.random(1,numplayers)
		answerer=players[rand]
		if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or answerer==answererold or p[answerer].out==true then
			ui.updateTextArea(1, "<p align='center'><b><font size='30'>Randomizing...</font></b></p>", nil)
			tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
			answerer=""
		else
			choose=false
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is now the answerer! Waiting to pick totuus vai tehtävä...</font></b>", nil)
			ui.addPopup(3,1,"You are the answerer! Do you want Truth? If No, you will choose Dare!",answerer,250,50,300,true)
		end
	elseif choosey==true and one==false then
		rand=math.random(1,numplayers)
		questioner=players[rand]
		if p[questioner].questioners==false and tfm.get.room.playerList[questioner].isDead==false and p[questioner].spectator==false or p[questioner].out==false then
			choosey=false
			p[questioner].questioners=true
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." is now the asker! Waiting to pick an answerer...</font></b>", nil)
			ui.addPopup(1,1,"Do you want a random Answerer? If <b>No</b>, you will have to type in your Answerer's username",questioner,250,50,300,true)
		else
			ui.updateTextArea(1, "<p align='center'><b><font size='30'>Randomizing...</font></b></p>", nil)
			tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
			questioner=""
		end
	end
	if skip==true then
		ui.updateTextArea(1, "<p align='center'><b><font size='30'>Skipping turn...</font></b></p>", nil)
		tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
		tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
		answerer=""
		questioner=""
		if timestamp < os.time()-3000 then
			start=true
			skip=false
		end
	end
	tfm.exec.movePlayer(questioner,120,120,false,0,0,false)
	tfm.exec.movePlayer(answerer,680,120,false,0,0,false)
	end
end
end

function eventTruthOrDare()
	start=false
	ui.removeTextArea(2)
	ui.removeTextArea(3)
	choosey=true
end

function eventPopupAnswer(id, name, answer)
	if id==1 and name==questioner then
		if answer=="yes" then
			answererold=""
			choose=true
		elseif answer=="no" then
			ui.addPopup(2,2,"Who do you want to be the answerer?",questioner,250,50,300,true)
		end
	elseif id==2 and name==questioner then
		x=1
		found=false
		answer=string.upper(string.sub(answer,0,1))..string.sub(answer,2)
		answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
		while x<=numplayers do
		print(players[x])
			if answer==players[x] then
			answerer=answer
			if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or p[answerer].out==true then
			answerer=""
			found=false
			else
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is now the answerer! Waiting to pick totuus vai tehtävä...</font></b>", nil)
			ui.addPopup(3,1,"You are the answerer! Do you want Truth? If <b>No</b>, you will choose Dare!",answerer,250,50,300,true)
			found=true
			end
			end
			x=x+1
		end
		if found==false then
			ui.addPopup(2,2,"There is no such answerer in the room. Type out the exact username of your answerer.",questioner,250,50,300,true)
		end
	elseif id==3 and name==answerer then
		if answer=="yes" then
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." has picked Truth! Waiting for question from "..questioner.."...</font></b>", nil)
			ui.addPopup(4,1,"Do you want a random Truth question? If <b>No</b>, you will have to submit a question.",questioner,250,50,300,true)
		elseif answer=="no" then
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." has picked Dare! Waiting for a dare from "..questioner.."...</font></b>", nil)
			ui.addPopup(5,1,"Do you want a random Dare? If <b>No</b>, you will have to submit a Dare.",questioner,250,50,300,true)

		end
	elseif id==4 and name==questioner then
		if answer=="yes" then
			question=truth[math.random(1,#truth)]
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has randomed a Truth question! Waiting for "..answerer.." to respond...</font></b>", nil)
			ui.addTextArea(2,"<b><font size='20'>Truth: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
			ui.addPopup(8,2,"<b>Type your Truth answer below</b>",answerer,250,175,300,true)

		elseif answer=="no" then
			ui.addPopup(6,2,"Type your Truth question below, or type #(number) for the question number from the random list.",questioner,250,50,300,true)
		end
	elseif id==5 and name==questioner then
		if answer=="yes" then
			question=dare[math.random(1,#dare)]
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has randomed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
			ui.addTextArea(2,"<b><font size='20'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
			ui.addPopup(9,1,"<b><font size='15'>Do what "..questioner.."dares you to do! If you click 'yes' you will promise that you will do your dare!</font><b>",answerer,250,175,300,true)
		elseif answer=="no" then
			ui.addPopup(7,2,"Type your Dare below, or type #(number) for the dare number from the random list.",questioner,250,50,300,true)
		end
	elseif id==6 and name==questioner then
		answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
		if answer=="" then
		ui.addPopup(6,2,"You have to type something as your Truth question.",questioner,250,50,300,true)
		elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#truth then
		question=truth[tonumber(string.sub(answer,2,3))]
		ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Truth question! Waiting for "..answerer.." to respond...</font></b>", nil)
		ui.addTextArea(2,"<b><font size='20'>Truth: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
		ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
		elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#truth then
		ui.addPopup(6,2,"You have to type a Truth question number less than or equal to "..tostring(#truth),questioner,250,50,300,true)
		else
		question=answer
		ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Truth question! Waiting for "..answerer.." to respond...</font></b>", nil)
		ui.addTextArea(2,"<b><font size='20'>Truth: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
		ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
		end
	elseif id==7 and name==questioner then
		answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
		if answer=="" then
			ui.addPopup(7,2,"You have to type something as your Dare.",questioner,250,50,300,true)
		elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#dare then
			if tonumber(string.sub(answer,2,3))==14 then
			mapcomplete=true
			end
			question=dare[tonumber(string.sub(answer,2,3))]
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
			ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
			ui.addPopup(9,1,"<b><font size='15'>Do what "..questioner.."dares you to do! If you click 'yes' you will promise that you will do your dare!</font><b>",answerer,250,175,300,true)
		elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#dare then
		ui.addPopup(7,2,"You have to type a Dare number less than or equal to "..tostring(#dare),questioner,250,50,300,true)
		else
			question=answer
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
			ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
			ui.addPopup(9,1,"<b><font size='15'>Do what "..questioner.."dares you to do! If you click 'yes' you will promise that you will do your dare!</font><b>",answerer,250,175,300,true)
		end
	elseif id==8 and name==answerer then
		answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
		ans = answer
		if ans=="" then
		ui.addPopup(8,2,"You have to type something as your Truth Answer",answerer,250,175,300,true)
		else
		ui.addTextArea(3,"<b><font size='20'>Answer: "..ans.."</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
		ui.updateTextArea(1, "<b><font size='15'>"..answerer.." has answered the question! Waiting for "..questioner.." to rate the answer</font></b>", nil)
		ui.addPopup(10,1,"<b><font size='15'>Are you satisfied with the answer?",questioner,250,50,300,true)
		end
	elseif id==9 and name==answerer then
		if answer=="yes" then
			ui.addTextArea(3,"<b><font size='20'>I, "..answerer..", accepts the challenge and promises to do the dare.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
			if mapcomplete==true then
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! He/she will have to complete the map before entering the game. Starting new game...</font></b>", nil)
			p[answerer].out=true
			mapcomplete=false
			for i=1,#players do
				if players[i]==answerer then
					table.remove(players,i)
				end
			end
			else
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! Starting new game...</font></b>", nil)
			end
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			p[name].new=false
			print("false")
			end
		elseif answer=="no" then
			mapcomplete=false
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a coward! Starting new game...</font></b>", nil)
			ui.addTextArea(3,"<b><font size='20'>I, "..answerer..", am a coward so I don't dare to do what you dared me to do.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			p[name].new=false
			print("false")
			end
		end
	elseif id==10 and name==questioner then
		if answer=="yes" then
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." is a satisfied with the answer! Starting new game...</font></b>", nil)
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			p[name].new=false
			print("false")
			end
		elseif answer=="no" then
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." is a not satisfied with the answer...:( Starting new game...</font></b>", nil)
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			p[name].new=false
			print("false")
			end
		end
	end
end

function eventPlayerLeft(name)
	ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..name.." left the room... What a coward!</font></b></p>", nil)
	if questioner==name or answerer==name then
		timestamp=os.time()
		skip=true
	end
	for i=1,#players do
		if players[i]==name then
		table.remove(players,i)
		end
	end
end

function eventPlayerDied(name)
	if p[name].spectator==false then
		tfm.exec.respawnPlayer(name)
	end
	if p[name].ban==true then
		tfm.exec.killPlayer(name)
		if name==questioner or name==answerer then
			timestamp=os.time()
			skip=true
		end
	end
end

function eventPlayerWon(playerName,timeElapsed, timeElapsedSinceRespawn)
tfm.exec.respawnPlayer(playerName)
if p[playerName].out==true then
p[playerName].out=false
table.insert(players,playerName)
print("yes")
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds! He/she has joined back the game!</font></b></p>", nil)
else
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds!</font></b></p>", nil)
end
end

function eventSummoningEnd(playerName, objectType, xPosition, yPosition, angle, xSpeed, ySpeed, other)
timestamplol[other.id]=os.time()
others[other.id]={summonobject=true}
end
