admins={"Tigrounette", "Melibellule", "Mousetat", "Eraspace"}
-- remember to put "," between each name!


tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@6411544")

players={}--respawn place is 400,320
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

truth={}--you can follow the format 'truth[number]="question"' 
truth[1]="Kuka on sinun ihastuksesi tässä pelissä?"
truth[2]="Mikä on lempiruokasi?"
truth[3]="Who is you model/favourite person in game?"
truth[4]="What games do you play besides Transformice?"
truth[5]="What would you like to be when you grow up?"
truth[6]="Have you sucked your thumb before?"
truth[7]="What brand of phone do you have currently?"
truth[8]="Have you ever farted in front of your friends or teachers in real life?"
truth[9]="If you could hack transformice, what would you do?"
truth[10]="What is your favourite fur in Transformice if you have to choose?"
truth[11]="Miksi pidät Transformice?"
truth[12]="What do you dislike/hate most about yourself, whether in personality or physically?"
truth[13]="What do you love most about yourself, whether in personality or physically?"
truth[14]="Tell us whether you love yourself more or hate/dislike yourself more, and tell us why."
truth[15]="Why do you like your current crush in real life, in personality terms AND physical terms?" 
truth[16]="Tell us why you hate the person you currently hate in real life, in personality terms."
truth[17]="If you had unlimited cheese and fraises, what item would you buy from the shop?"
truth[18]="Which will you choose, free million of cash or living longer?"
truth[19]="What is your favourite board game?"
truth[20]="What is the longest that you have ever been without taking a shower?"
truth[21]="Have you ever eaten an insect before?"
truth[22]="If you could be any super villain, who would you be?"
truth[23]="If you could be any superhero, who would you be?"
truth[24]="If you could be an insect, what would you be?"
truth[25]="Who is your favourite staff?(Admin/Moderator/Sentinels/Mapcrew/Funcorp)"
truth[26]="What is your impression of me? Do you like me?"
truth[27]="Have you ever cheated on any test?"
truth[28]="How many boyfriends/girlfriends have you had?"
truth[29]="If you were a billionaire, what would you spend your time doing?"
truth[30]="If you could be a boss of a company one day, what would you do?"
truth[31]="What celebrity are you obsessed with?"
truth[32]="What is your favourite sports team/player?"
truth[32]="What is your favourite song that is out right now?"
truth[33]="If you were on an island with a person and yourself only, who would you want the person to be?(the person must be in this room)"
truth[34]="If you could marry, kiss, hug, punch and kill someone in this room, who would they be?(if there are less than 5 mice you can repeat names)"
truth[35]="Would rather be rich but dumb, or poor but clever?"
truth[36]="Are you closer to your mother or your father?"
truth[37]="Do you like anyone besides your soulmate? If yes, who?"

dare={}--you can follow the format 'dare[number]="Dare"' 
dare[1]="I dare you go into EN/EN2 room 2 and spam this message 10 times: CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE"
dare[2]="I dare you whisper a moderator a swear word."
dare[3]="I dare you tell your crush, or anybody in this room that you love him/her right now"
dare[4]="I dare you go into EN/EN2 room 1 and spam this message 10 times: I'M FLOODING REPORT ME!"
dare[5]="I dare you report a moderator for hacking"
dare[6]="I dare you create an account similar to that of an online moderator and use that account to whisper to the online moderator: Hallo buddy!"
dare[7]="I dare you tell your real life name to everybody in chat"
dare[8]="I dare you take a picture of your real life face and send it to everyone to see."
dare[9]="I dare you go into any #utility room with at least 3 people in it and crash the room."
dare[10]="I dare you give me, the questioner, every ball you have in your inventory, if you have any."
dare[11]="I dare you to disconnect and reconnect right now."
dare[12]="I dare you to say who would be your most likely crush among the players in this room we are in."
dare[13]="I dare you to give all your selfies to me right now, if you have any balls to do it via trade"
dare[14]="I dare you complete this map without cheating!"
dare[15]="I dare you type 'I LOVE YOU (username)' 30 times to a username in room/tribe in room chat or in tribe chat."
dare[16]="I dare you kiss me, the questioner, 20 times :)"
dare[17]="I dare you marry your closest friend, if u are not already married"
dare[18]="I dare you give me, the questioner, every snowball you have in your inventory, if you have any."
dare[19]="I dare you whisper a moderator, 'Ban me!'"
dare[20]="I dare you kiss and hug someone in the room of the same gender"
dare[21]="I dare you spam 'I AM A DUMB COWARD!' 10 times in this room's chat"
dare[22]="I dare you ask your crush for a date."
dare[23]="I dare you spam to a moderator, 'HEY <moderator's name>, I'M DAD'"
dare[24]="I dare you go to a room in EN/EN2 and type 'I WANT WAFFLES' 5 times."
dare[25]="I dare you go to cafe and create a topic: 'I LOVE UNDERTALE'"
dare[26]="I dare you go to /room village1 and say to a random person there, 'OMG I LOVE YOU (insert random person's name) FRIEND ME I ALWAYS WANTED TO MEET YOU OMG!!! *-*'"

function eventNewPlayer(name)
	ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Type !liity to join the game.</font></p></b>",name,50,365,700,40,0x324650,0x212F36,0.8,true)
	ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>About the game</b></font><font size='15'>\nEvery game, everyone will have the chance to be the Asker. On the first popup as an asker, u can click 'Yes' to randomize a answerer, or 'No' to type a particular person in room. This is similar for almost all other popups, where 'Yes' is for random and 'No' is for typing out yourself. If you are the asker, you can also type '#(number)' to give the question number of the truth/dare in the random list. There are currently <b>"..#truth.."</b> random truths and <b>"..#dare.."</b> random dares, so if you have any feedback feel free to tell me.\n<font color='#00FF00'>Created by Mousetat</font> \nForum Thread: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Type !commands to see the list of commands</font>",name,100,50,600,true)
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
	ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Welcome to Truth or Dare Game!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
	ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>About the game</b></font><font size='15'>\nEvery game, everyone will have the chance to be the Asker. On the first popup as an asker, u can click 'Yes' to randomize a answerer, or 'No' to type a particular person in room. This is similar for almost all other popups, where 'Yes' is for random and 'No' is for typing out yourself. If you are the asker, you can also type '#(number)' to give the question number of the truth/dare in the random list. There are currently <b>"..#truth.."</b> random truths and <b>"..#dare.."</b> random dares, so if you have any feedback feel free to tell me.\n<font color='#00FF00'>Created by Mousetat</font> \nForum Thread: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Type !commands to see the list of commands</font>",nil,100,50,600,true)
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
		ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>About the game</b></font><font size='15'>\nEvery game, everyone will have the chance to be the Asker. On the first popup as an asker, u can click 'Yes' to randomize a answerer, or 'No' to type a particular person in room. This is similar for almost all other popups, where 'Yes' is for random and 'No' is for typing out yourself. If you are the asker, you can also type '#(number)' to give the question number of the truth/dare in the random list. There are currently <b>"..#truth.."</b> random truths and <b>"..#dare.."</b> random dares, so if you have any feedback feel free to tell me.\n<font color='#00FF00'>Created by Mousetat</font> \nForum Thread: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Type !commands to see the list of commands</font>",name,100,50,600,true)
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
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is now the answerer! Waiting to pick truth or dare...</font></b>", nil)
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
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is now the answerer! Waiting to pick Truth or Dare...</font></b>", nil)
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
