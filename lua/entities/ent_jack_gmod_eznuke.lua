-- Jackarunda 2019
AddCSLuaFile()
ENT.Type="anim"
ENT.Author="Jackarunda"
ENT.Category="JMod - EZ Explosives"
ENT.Information="glhfggwpezpznore"
ENT.PrintName="EZ Micro Tactical Nuclear Bomb"
ENT.Spawnable=true
ENT.AdminSpawnable=true
---
ENT.JModPreferredCarryAngles=Angle(0,0,0)
---
local STATE_BROKEN,STATE_OFF,STATE_ARMED=-1,0,1
function ENT:SetupDataTables()
	self:NetworkVar("Int",0,"State")
end
---
if(SERVER)then
	function ENT:SpawnFunction(ply,tr)
		local SpawnPos=tr.HitPos+tr.HitNormal*40
		local ent=ents.Create(self.ClassName)
		ent:SetAngles(Angle(0,0,0))
		ent:SetPos(SpawnPos)
		JMod_Owner(ent,ply)
		ent:Spawn()
		ent:Activate()
		--local effectdata=EffectData()
		--effectdata:SetEntity(ent)
		--util.Effect("propspawn",effectdata)
		return ent
	end
	function ENT:Initialize()
		self.Entity:SetModel("models/props_wasteland/laundry_washer001a.mdl")
		self.Entity:SetMaterial("models/mat_jack_gmod_ezmbhg")
		--self.Entity:SetModelScale(.75,0)
		self.Entity:PhysicsInit(SOLID_VPHYSICS)
		self.Entity:SetMoveType(MOVETYPE_VPHYSICS)	
		self.Entity:SetSolid(SOLID_VPHYSICS)
		self.Entity:DrawShadow(true)
		self.Entity:SetUseType(SIMPLE_USE)
		---
		timer.Simple(.01,function()
			self:GetPhysicsObject():SetMass(200)
			self:GetPhysicsObject():Wake()
		end)
		---
		self:SetState(STATE_OFF)
		self.LastUse=0
		timer.Simple(4,function() self:Detonate() end) -- debug
	end
	function ENT:PhysicsCollide(data,physobj)
		if(data.DeltaTime>0.2)then
			if(data.Speed>50)then
				self.Entity:EmitSound("Canister.ImpactHard")
			end
			if(data.Speed>1000)then self:Break() end
		end
	end
	function ENT:Break()
		if(self:GetState()==STATE_BROKEN)then return end
		self:SetState(STATE_BROKEN)
		self:EmitSound("snd_jack_turretbreak.wav",70,math.random(80,120))
		for i=1,20 do
			self:DamageSpark()
		end
		if(self.Hum)then self.Hum:Stop() end
		SafeRemoveEntityDelayed(self,10)
	end
	function ENT:DamageSpark()
		local effectdata=EffectData()
		effectdata:SetOrigin(self:GetPos()+self:GetUp()*10+VectorRand()*math.random(0,10))
		effectdata:SetNormal(VectorRand())
		effectdata:SetMagnitude(math.Rand(2,4)) --amount and shoot hardness
		effectdata:SetScale(math.Rand(.5,1.5)) --length of strands
		effectdata:SetRadius(math.Rand(2,4)) --thickness of strands
		util.Effect("Sparks",effectdata,true,true)
		self:EmitSound("snd_jack_turretfizzle.wav",70,100)
	end
	function ENT:OnTakeDamage(dmginfo)
		self.Entity:TakePhysicsDamage(dmginfo)
		if(dmginfo:GetDamage()>=100)then
			if(math.random(1,5)==1)then
				self:Break()
			end
		end
	end
	function ENT:Use(activator)
		local State,Time=self:GetState(),CurTime()
		if(State<0)then return end
		if(State==STATE_OFF)then
			JMod_Owner(self,activator)
			if(Time-self.LastUse<.2)then
				self:SetState(STATE_ARMED)
			else
				activator:PrintMessage(HUD_PRINTCENTER,"double tap E to arm")
			end
			self.LastUse=Time
		end
		self:Detonate() -- debug
	end
	local function SendClientNukeEffect(pos,power,range,immolateRange)
		net.Start("JMod_NuclearBlast")
		net.WriteVector(pos)
		net.WriteFloat(power)
		net.WriteFloat(range)
		net.WriteFloat(immolateRange)
		net.Broadcast()
	end
	function ENT:Detonate()
		if(self.Exploded)then return end
		self.Exploded=true
		local SelfPos,Att,Power,Range=self:GetPos()+Vector(0,0,100),self.Owner or game.GetWorld(),JMOD_CONFIG.NukePowerMult,JMOD_CONFIG.NukeRangeMult
		JMod_Sploom(Att,SelfPos,500)
		JMod_BlastDamageIgnoreWorld(SelfPos,Att,nil,1500*Power,1500*Range)
		---
		SendClientNukeEffect(SelfPos,0,0,0)
		util.ScreenShake(SelfPos,1000,10,10,10000*Range)
		local Eff="fatman_main"
		if not(util.QuickTrace(SelfPos,Vector(0,0,-300),{self}).HitWorld)then Eff="fatman_air" end
		ParticleEffect(Eff,SelfPos,Angle(0,0,0))
		---
		for i=1,5 do
			timer.Simple(i/2,function()
				local powa,renj=10+i*5*Power,1+i/5*Range
				---
				local ThermalRadiation=DamageInfo()
				ThermalRadiation:SetDamageType(DMG_BURN)
				ThermalRadiation:SetDamage(20/i)
				ThermalRadiation:SetAttacker(Att)
				ThermalRadiation:SetInflictor(game.GetWorld())
				util.BlastDamageInfo(ThermalRadiation,SelfPos,20000*Range)
				---
				util.BlastDamage(game.GetWorld(),Att,SelfPos,3000*i,700/i)
				util.BlastDamage(game.GetWorld(),Att,SelfPos,500*i,2000/i)
				---
				JMod_WreckBuildings(nil,SelfPos,powa,renj,i==1)
				JMod_BlastDoors(nil,SelfPos,powa,renj,i==1)
				---
				SendClientNukeEffect(SelfPos,powa,renj,2000)
				---
				if(i==5)then JMod_DecalSplosion(SelfPos,"BigScorch",3000,30) end
			end)
		end
		self:Remove()
	end
	function ENT:OnRemove()
		--
	end
	function ENT:Think()
		local State,Time=self:GetState(),CurTime()
		--
	end
elseif(CLIENT)then
	function ENT:Initialize()
		--
	end
	function ENT:Draw()
		self:DrawModel()
		--
	end
	language.Add("ent_jack_gmod_eznuke","EZ Micro Tactical Nuclear Bomb")
end