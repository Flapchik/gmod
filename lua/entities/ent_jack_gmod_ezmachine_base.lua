﻿-- Jackarunda 2021
AddCSLuaFile()
ENT.Type="anim"
ENT.PrintName="EZ Machine"
ENT.Author="Jackarunda"
ENT.Category="JMod - EZ Machines"
ENT.Information="glhfggwpezpznore"
ENT.Spawnable=false
ENT.AdminSpawnable=false
ENT.NoSitAllowed=true
----
ENT.Model="models/props_lab/reciever01d.mdl"
ENT.Mass=150
ENT.IsJackyEZmachine=true
----
ENT.PropModels={
	"models/props_lab/reciever01d.mdl",
	"models/props/cs_office/computer_caseb_p2a.mdl",
	"models/props/cs_office/computer_caseb_p3a.mdl",
	"models/props/cs_office/computer_caseb_p4a.mdl",
	"models/props/cs_office/computer_caseb_p5a.mdl",
	"models/props/cs_office/computer_caseb_p5b.mdl",
	"models/props/cs_office/computer_caseb_p6a.mdl",
	"models/props/cs_office/computer_caseb_p6b.mdl",
	"models/props/cs_office/computer_caseb_p7a.mdl",
	"models/props/cs_office/computer_caseb_p8a.mdl",
	"models/props/cs_office/computer_caseb_p9a.mdl",
	"models/gibs/helicopter_brokenpiece_02.mdl",
	"models/gibs/manhack_gib03.mdl",
	"models/gibs/manhack_gib04.mdl",
	"models/gibs/manhack_gib05.mdl",
	"models/gibs/manhack_gib06.mdl",
	"models/gibs/metal_gib1.mdl",
	"models/gibs/metal_gib2.mdl",
	"models/gibs/metal_gib3.mdl",
	"models/gibs/metal_gib4.mdl",
	"models/gibs/metal_gib5.mdl",
	"models/gibs/scanner_gib01.mdl",
	"models/gibs/scanner_gib02.mdl",
	"models/props_c17/canisterchunk01d.mdl",
	"models/props_c17/canisterchunk01b.mdl",
	"models/props_c17/canisterchunk01l.mdl",
	"models/props_c17/canisterchunk01m.mdl",
	"models/props_c17/canisterchunk02b.mdl",
	"models/props_c17/canisterchunk02c.mdl",
	"models/props_c17/canisterchunk02d.mdl",
	"models/props_c17/canisterchunk02e.mdl",
	"models/props_c17/canisterchunk02f.mdl",
	"models/props_c17/canisterchunk01a.mdl",
	"models/props_c17/canisterchunk01h.mdl",
	"models/props_c17/oildrumchunk01a.mdl",
	"models/props_c17/oildrumchunk01b.mdl",
	"models/props_c17/oildrumchunk01c.mdl",
	"models/props_c17/oildrumchunk01d.mdl",
	"models/props_c17/oildrumchunk01e.mdl",
	"models/props_c17/oildrumchunk01a.mdl",
	"models/props_c17/oildrumchunk01b.mdl",
	"models/props_c17/oildrumchunk01c.mdl",
	"models/props_c17/oildrumchunk01d.mdl",
	"models/props_c17/oildrumchunk01e.mdl",
	"models/props_canal/boat001a_chunk010.mdl",
	"models/props_canal/boat001a_chunk06.mdl",
	"models/props_debris/concrete_chunk04a.mdl",
	"models/props_debris/concrete_chunk05g.mdl",
	"models/props_debris/prison_wallchunk001f.mdl",
	"models/props_debris/wood_chunk04a.mdl",
	"models/props_debris/wood_chunk06b.mdl",
	"models/props_junk/glassjug01_chunk01.mdl",
	"models/props_junk/glassjug01_chunk03.mdl",
	"models/props_junk/vent001_chunk1.mdl",
	"models/props_junk/vent001_chunk2.mdl",
	"models/props_junk/vent001_chunk3.mdl",
	"models/props_junk/vent001_chunk4.mdl",
	"models/props_junk/vent001_chunk5.mdl",
	"models/props_junk/vent001_chunk6.mdl",
	"models/props_junk/vent001_chunk7.mdl",
	"models/props_junk/vent001_chunk8.mdl",
	"models/props_junk/wood_crate001a_chunk03.mdl",
	"models/props_wasteland/prison_toiletchunk01g.mdl",
	"models/props_wasteland/prison_toiletchunk01h.mdl",
	"models/props_wasteland/prison_toiletchunk01i.mdl",
	"models/props_wasteland/prison_toiletchunk01j.mdl",
	"models/props_wasteland/prison_toiletchunk01k.mdl",
	"models/props_wasteland/prison_toiletchunk01l.mdl",
	"models/props_wasteland/prison_toiletchunk01m.mdl",
	"models/props_wasteland/prison_toiletchunk01e.mdl",
	"models/props_wasteland/prison_toiletchunk01c.mdl",
	"models/props_wasteland/prison_sinkchunk001b.mdl",
	"models/props_wasteland/prison_sinkchunk001c.mdl",
	"models/props_wasteland/prison_sinkchunk001d.mdl",
	"models/props_wasteland/prison_sinkchunk001e.mdl",
	"models/props_wasteland/prison_sinkchunk001g.mdl",
	"models/props_wasteland/prison_sinkchunk001h.mdl",
	"models/Mechanics/gears/gear12x6_small.mdl",
	"models/Mechanics/gears/gear12x12.mdl",
	"models/props_phx/gears/bevel12.mdl",
	"models/props_phx/gears/bevel9.mdl",
	"models/Mechanics/gears2/gear_12t2.mdl",
	"models/Mechanics/gears/gear12x6_small.mdl",
	"models/Mechanics/gears/gear12x12.mdl",
	"models/props_phx/gears/bevel12.mdl",
	"models/props_phx/gears/bevel9.mdl",
	"models/Mechanics/gears2/gear_12t2.mdl"
}
ENT.EZconsumes={
	JMod.EZ_RESOURCE_TYPES.BASICPARTS, 
	JMod.EZ_RESOURCE_TYPES.POWER
}
ENT.FlexFuels = nil -- "Flex Fuels" are other resource types that the machine will load as electricity
--- These stats do not change when the machine is upgraded
ENT.StaticPerfSpecs={ 
	MaxElectricity=100,
	MaxDurability=100,
	Armor=1
}
--- These stats change when the machine is upgraded
ENT.DynamicPerfSpecs={ 
	--
}
ENT.DynamicPerfSpecExp=1

---- Shared Functions ----
function ENT:SetupDataTables()
	self:NetworkVar("Int",0,"State")
	self:NetworkVar("Int",1,"Grade")
	self:NetworkVar("Float",0,"Electricity")
	if(self.CustomSetupDataTables)then
		self:CustomSetupDataTables()
	end
end

--[[
function ENT:GravGunPickupAllowed(ply)
	return true
end
--]]

function ENT:InitPerfSpecs()
	local Grade = self:GetGrade()
	local NetworkTable = {}
	if (self.StaticPerfSpecs) then
		for specName, value in pairs(self.StaticPerfSpecs)do 
			self[specName] = value 
			NetworkTable[specName] = NewValue
		end
	end
	if (self.DynamicPerfSpecs) then
		for specName, value in pairs(self.DynamicPerfSpecs)do
			if(type(value)~="table")then
				if not JMod.EZ_GRADE_BUFFS[Grade] then return end
				local NewValue = value * JMod.EZ_GRADE_BUFFS[Grade] ^ (self.DynamicPerfSpecExp)
				if (NewValue > 2) then
					self[specName] = math.ceil(NewValue)
					NetworkTable[specName] = NewValue
				else
					self[specName] = NewValue
					NetworkTable[specName] = NewValue
				end
			end
		end
	end
	if SERVER then
		net.Start("JMod_MachineSync")
		net.WriteEntity(self)
		net.WriteTable(NetworkTable)
		net.Broadcast()
	end
end

function ENT:Upgrade(level)
	if not(level)then level=self:GetGrade()+1 end
	if(level>5)then return end
	self:SetGrade(level)
	self:InitPerfSpecs()
	self.UpgradeProgress={}
end

if(SERVER)then
	function ENT:SpawnFunction(ply,tr,classname)
		local SpawnPos=tr.HitPos+tr.HitNormal*(self.SpawnHeight or 60)
		local ent=ents.Create(classname)
		ent:SetAngles((ent.JModPreferredCarryAngles and ent.JModPreferredCarryAngles) or Angle(0,0,0))
		ent:SetPos(SpawnPos)
		JMod.SetEZowner(ent,ply)
		if JMod.Config.Machines.SpawnMachinesFull then
			ent.SpawnFull = true
		end
		ent:Spawn()
		ent:Activate()
		--local effectdata=EffectData()
		--effectdata:SetEntity(ent)
		--util.Effect("propspawn",effectdata)
		JMod.Hint(ply, classname)
		return ent
	end

	function ENT:Initialize()
		self.StaticPerfSpecs.BaseClass=nil
		self.DynamicPerfSpecs.BaseClass=nil
		--
		self:SetModel(self.Model)
		if(self.Mat)then
			self:SetMaterial(self.Mat)
		end
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)	
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(true)
		self:SetUseType(SIMPLE_USE)
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetMass(self.Mass)
		end
		self:SetState(JMod.EZ_STATE_OFF)
		self:SetGrade(JMod.EZ_GRADE_BASIC)
		self:InitPerfSpecs()
		self.DamageTypeTable = JMod.DefualtArmorTable
		self.BackupRecipe = {[JMod.EZ_RESOURCE_TYPES.BASICPARTS] = 100}

		--=== Put things that shoulf be overrideable by machines above this line. ====-
		if(self.CustomInit)then self:CustomInit() end
		--=== Apply changes and state things that shouldn't be overrideable below.====-

		if self.SetupWire and istable(WireLib) then
			self:SetupWire()
		end
		
		self.Durability = self.MaxDurability * JMod.Config.Machines.DurabilityMult
		self:SetNW2Float("EZdurability", self.Durability)
		--print(self:GetNW2Float("EZdurability", -1))
		if self.SpawnFull then
			self:SetElectricity(self.MaxElectricity)
		else
			self:SetElectricity(0)
		end
		---
		if(JMod.GetEZowner(self))then JMod.Colorify(self) end
		---
		if(self.EZupgradable)then
			self.UpgradeProgress = {}
			self.UpgradeCosts = JMod.CalculateUpgradeCosts((JMod.Config.Craftables[self.PrintName] and JMod.Config.Craftables[self.PrintName].craftingReqs) or (self.BackupRecipe and self.BackupRecipe))
		end
		self.NextRefillTime = 0
	end

	function ENT:SetupWire()
		if not(istable(WireLib)) then return end
		self.Inputs = WireLib.CreateInputs(self, {"ToggleState [NORMAL]", "OnOff [NORMAL]"}, {"Toggles the machine on or off with an input > 0", "1 turns on, 0 turns off"})
		---
		local WireOutputs = {"State [NORMAL]", "Grade [NORMAL]"}
		local WireOutputDesc = {"The state of the machine \n-1 is broken \n0 is off \n1 is on", "The machine grade"}
		for _, typ in ipairs(self.EZconsumes) do
			if typ == JMod.EZ_RESOURCE_TYPES.BASICPARTS then typ = "Durability" end
			local ResourceName = string.Replace(typ, " ", "")
			local ResourceDesc = "Amount of "..ResourceName.." left"
			--
			local OutResourceName = string.gsub(ResourceName, "^%l", string.upper).." [NORMAL]"
			if not(istable(self.FlexFuels) and table.HasValue(self.FlexFuels, typ)) then
				table.insert(WireOutputs, OutResourceName)
				table.insert(WireOutputDesc, ResourceDesc)
			end
		end
		if self.GetProgress then
			table.insert(WireOutputs, "Progress [NORMAL]")
			table.insert(WireOutputDesc,  "Machine's progress")
		end
		if self.FlexFuels then
			table.insert(WireOutputs, "FlexFuel [NORMAL]")
			table.insert(WireOutputDesc,  "Machine's flex fuel left")
		end
		self.Outputs = WireLib.CreateOutputs(self, WireOutputs, WireOutputDesc)
	end

	function ENT:UpdateWireOutputs()
		if istable(WireLib) then
			WireLib.TriggerOutput(self, "State", self:GetState())
			WireLib.TriggerOutput(self, "Grade", self:GetGrade())
			if self.GetProgress then
				WireLib.TriggerOutput(self, "Progress", self:GetProgress())
			end
			for _, typ in ipairs(self.EZconsumes) do
				if typ == JMod.EZ_RESOURCE_TYPES.BASICPARTS then
					WireLib.TriggerOutput(self, "Durability", self.Durability)
				else
					if istable(self.FlexFuels) and table.HasValue(self.FlexFuels, typ) then
						WireLib.TriggerOutput(self, "FlexFuel", self:GetElectricity())
					else
						if JMod.EZ_RESOURCE_TYPE_METHODS[typ] then
							local ResourceGetMethod = self["Get"..JMod.EZ_RESOURCE_TYPE_METHODS[typ]]
							if ResourceGetMethod then
								local ResourceName = string.Replace(typ, " ", "")
								WireLib.TriggerOutput(self, string.gsub(ResourceName, "^%l", string.upper), ResourceGetMethod(self))
							end
						end
					end
				end
			end
		end
	end

	function ENT:TriggerInput(iname, value)
		local State = self:GetState()
		if State < 0 then return end
		if iname == "OnOff" then
			if value == 1 then
				self:TurnOn()
			elseif value == 0 then
				self:TurnOff()
			end
		elseif iname == "ToggleState" then
			if value > 0 then
				if State == 0 then
					self:TurnOn()
				elseif State > 0 then
					self:TurnOff()
				end
			end
		end
	end

	function ENT:UpdateDepositKey()
		self.DepositKey = JMod.GetDepositAtPos(self, self:GetPos() - Vector(0, 0, self.SpawnHeight or 60))
	end

	function ENT:PhysicsCollide(data, physobj)
		if (data.Speed>80) and (data.DeltaTime>0.2) then
			self:EmitSound("Metal_Box.ImpactSoft")
			local Ent = data.HitEntity
			local Held = false
			if self:IsPlayerHolding() or (IsValid(Ent) and Ent:IsPlayerHolding()) then Held = true end
			if (data.Speed > 150) then
				self:EmitSound("Metal_Box.ImpactHard")
				if (data.Speed > 500) then
					local World = game.GetWorld()
					local CollisionDir = data.OurOldVelocity - data.TheirOldVelocity
					local TheirForce = (.5 * data.HitObject:GetMass() * ((CollisionDir:Length()/16)*0.3048)^2)
					if Ent == World then
						TheirForce = (.5 * physobj:GetMass() * ((CollisionDir:Length()/16)*0.3048)^2)
					end
					local ForceThreshold = physobj:GetMass() * (self.EZanchorage or 1000)
					local PhysDamage = TheirForce/(physobj:GetMass())

					--jprint(PhysDamage)
					--jprint("Their Speed: ", math.Round(CollisionDir:Length()), "Resultant force: "..tostring(math.Round(TheirForce - ForceThreshold)))
					
					if self.EZinstalled and not(physobj:IsMotionEnabled()) and (TheirForce >= ForceThreshold) then
						physobj:EnableMotion(true)
					end
					if PhysDamage >= 1 and not(Held) then
						local CrushDamage = DamageInfo()
						CrushDamage:SetDamage(math.floor(PhysDamage))
						CrushDamage:SetDamageType(DMG_CRUSH)
						CrushDamage:SetDamageForce(data.TheirOldVelocity / 1000)
						CrushDamage:SetDamagePosition(data.HitPos)
						CrushDamage:SetAttacker(Ent or World)
						CrushDamage:SetInflictor(Ent or World)
						self:TakeDamageInfo(CrushDamage)
						self:EmitSound("Metal_Box.Break")
						JMod.DamageSpark(self)

						--[[if data.HitEntity:IsVehicle() then
							local CrashDamage = DamageInfo()
							--jprint(Dmg)
							CrashDamage:SetDamage(Dmg * 2)
							CrashDamage:SetDamageType(DMG_CRUSH)
							CrashDamage:SetDamageForce(data.TheirOldVelocity * -0.001)
							CrashDamage:SetDamagePosition(data.HitPos)
							data.HitEntity:TakeDamageInfo(CrashDamage)
						end]]--
					end
				end
			end
		end
	end

	function ENT:ConsumeElectricity(amt)
		if not(self.GetElectricity)then return end
		amt = (amt or .2)/(self.ElectricalEfficiency or 1)
		local NewAmt = math.Clamp(self:GetElectricity() - amt, 0.0, self.MaxElectricity)
		self:SetElectricity(NewAmt)
		if(NewAmt <= 0 and self:GetState() > 0)then self:TurnOff() end
	end

	function ENT:DetermineDamageMultiplier(dmg)
		local Mult = .5 / (self.Armor or 1)
		for typ, mul in pairs(self.DamageTypeTable)do
			if(dmg:IsDamageType(typ))then Mult = Mult * mul break end
		end
		if(self.CustomDetermineDmgMult)then Mult = Mult * self:CustomDetermineDmgMult(dmg) end
		return Mult
	end

	function ENT:OnTakeDamage(dmginfo)
		if not(IsValid(self))then return end
		self:TakePhysicsDamage(dmginfo)
		--
		local DmgMult = self:DetermineDamageMultiplier(dmginfo)
		if(DmgMult <= .01)then return end
		local Damage = dmginfo:GetDamage() * DmgMult
		--jprint(Damage)
		self.Durability = self.Durability - math.Round(Damage, 2)
		self:SetNW2Float("EZdurability", self.Durability)

		if(self.Durability <= 0)then self:Break(dmginfo) end
		if(self.Durability <= -(self.MaxDurability * 2))then self:Destroy(dmginfo) end
	end

	function ENT:Break(dmginfo)
		if(self:GetState() == JMod.EZ_STATE_BROKEN)then return end
		self:SetState(JMod.EZ_STATE_BROKEN)
		self:EmitSound("snd_jack_turretbreak.wav", 70, math.random(80, 120))
		for i = 1, 20 do JMod.DamageSpark(self) end

		local StartPoint, ToPoint, Spread, Scale, UpSpeed = self:LocalToWorld(self:OBBCenter()), nil, 2, 1, 10
		local Force, GibNum = dmginfo:GetDamageForce(), math.min(JMod.Config.Machines.SupplyEffectMult * self:GetPhysicsObject():GetMass()/2000, 20)

		if JMod.Config.Craftables[self.PrintName] then
			for k, v in pairs(JMod.Config.Craftables[self.PrintName].craftingReqs) do
				JMod.ResourceEffect(k, StartPoint, ToPoint, GibNum * (v / 5000), Spread, Scale, UpSpeed)
			end
		else
			JMod.ResourceEffect(JMod.EZ_RESOURCE_TYPES.BASICPARTS, StartPoint, ToPoint, GibNum, Spread, Scale, UpSpeed)
		end

		if(self.Pod)then -- machines with seats
			if(IsValid(self.Pod:GetDriver()))then
				self.Pod:GetDriver():ExitVehicle()
			end
			self.Pod:Fire("lock","",0)
		end
		if(self.OnBreak)then self:OnBreak() end
	end

	function ENT:Destroy(dmginfo)
		if(self.Destroyed)then return end
		self.Destroyed = true
		self:EmitSound("snd_jack_turretbreak.wav",70,math.random(80,120))
		for i = 1, 20 do JMod.DamageSpark(self) end

		local StartPoint, ToPoint, Spread, Scale, UpSpeed = self:LocalToWorld(self:OBBCenter()), nil, 2, 1, 10
		local Force, GibNum = dmginfo:GetDamageForce(), math.min(JMod.Config.Machines.SupplyEffectMult * self:GetPhysicsObject():GetMass()/1000, 30)
		if JMod.Config.Craftables[self.PrintName] then
			for k, v in pairs(JMod.Config.Craftables[self.PrintName].craftingReqs) do
				JMod.ResourceEffect(k, StartPoint, ToPoint, GibNum * (v / 800), Spread, Scale, UpSpeed)
			end
		else
			JMod.ResourceEffect(JMod.EZ_RESOURCE_TYPES.BASICPARTS, StartPoint, ToPoint, GibNum, Spread, Scale, UpSpeed)
		end

		if(self.Pod)then -- machines with seats
			if(IsValid(self.Pod:GetDriver()))then
				self.Pod:GetDriver():ExitVehicle()
			end
		end
		if self.ProduceResource then self:ProduceResource() end
		if self.OnDestroy then self:OnDestroy(dmginfo) end
		self:SetNoDraw(true)
		self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		SafeRemoveEntityDelayed(self, 2)
	end

	function ENT:SFX(str,absPath)
		if(absPath)then
			sound.Play(str,self:GetPos()+Vector(0,0,20)+VectorRand()*10,60,math.random(90,110))
		else
			sound.Play("snds_jack_gmod/"..str..".wav",self:GetPos()+Vector(0,0,20)+VectorRand()*10,60,100)
		end
	end

	function ENT:Whine(serious)
		local Time=CurTime()
		if(self.NextWhine<Time)then
			self.NextWhine=Time+4
			self:EmitSound("snds_jack_gmod/ezsentry_whine.wav",70,100)
			self:ConsumeElectricity(.05)
		end
	end

	function ENT:OnRemove()
	end

	function ENT:TryLoadResource(typ, amt)
		if(amt <= 0)then return 0 end
		local Time = CurTime()
		if (self.NextRefillTime > Time) or (typ == "generic") then return 0 end
		for _,v in pairs(self.EZconsumes)do
			if(typ == v)then
				local Accepted = 0
				if(typ == JMod.EZ_RESOURCE_TYPES.POWER)then
					local Powa = self:GetElectricity()
					local Missing = self.MaxElectricity - Powa
					if(Missing <= 0)then return 0 end
					Accepted = math.min(Missing, amt)
					self:SetElectricity(Powa + Accepted)
					self:EmitSound("snd_jack_turretbatteryload.wav", 65, math.random(90, 110))
				elseif(typ == JMod.EZ_RESOURCE_TYPES.MEDICALSUPPLIES)then
					local Supps = self:GetSupplies()
					local Missing = self.MaxSupplies - Supps
					if(Missing <= 0)then return 0 end
					--if(Missing<self.MaxSupplies*.1)then return 0 end
					Accepted = math.min(Missing, amt)
					self:SetSupplies(Supps + Accepted)
					self:EmitSound("snd_jack_turretbatteryload.wav", 65, math.random(90, 110)) -- TODO: new sound here
				elseif(typ == JMod.EZ_RESOURCE_TYPES.BASICPARTS)then
					local Missing = self.MaxDurability - self.Durability
					if(Missing <= 0)then return 0 end
					Accepted = math.min(Missing / 2, amt)
					self.Durability = math.min(self.Durability + (Accepted * 2), self.MaxDurability)
					if(self.Durability >= self.MaxDurability)then self:RemoveAllDecals() end
					self:EmitSound("snd_jack_turretrepair.wav", 65, math.random(90, 110))
					if(self.Durability > 0)then
						if(self:GetState() == JMod.EZ_STATE_BROKEN)then self:SetState(JMod.EZ_STATE_OFF) end
					end
					self:SetNW2Float("EZdurability", self.Durability)
				elseif(typ == JMod.EZ_RESOURCE_TYPES.GAS)then
					local Fool = self:GetGas()
					local Missing = self.MaxGas - Fool
					if(Missing <= 0)then return 0 end
					--if(Missing < self.MaxGas * .1)then return 0 end
					Accepted=math.min(Missing, amt)
					self:SetGas(Fool + Accepted)
					self:EmitSound("snds_jack_gmod/gas_load.wav", 65, math.random(90, 110))
				elseif(typ == JMod.EZ_RESOURCE_TYPES.AMMO)then
					local Ammo = self:GetAmmo()
					local Missing = self.MaxAmmo - Ammo
					if(Missing <= 1)then return 0 end
					Accepted = math.min(Missing, amt)
					self:SetAmmo(Ammo + Accepted)
					self:EmitSound("snd_jack_turretammoload.wav", 65, math.random(90, 110))
				elseif(typ == JMod.EZ_RESOURCE_TYPES.MUNITIONS)then
					local Ammo = self:GetAmmo()
					local Missing = self.MaxAmmo - Ammo
					if(Missing <= 1)then return 0 end
					Accepted = math.min(Missing, amt)
					self:SetAmmo(Ammo + Accepted)
					self:EmitSound("snd_jack_turretammoload.wav", 65, math.random(90, 110))
				elseif(typ == JMod.EZ_RESOURCE_TYPES.COOLANT)then
					local Kewl = self:GetCoolant()
					local Missing = self.MaxCoolant - Kewl
					if(Missing < 1)then return 0 end
					Accepted=math.min(Missing,amt)
					self:SetCoolant(Kewl+Accepted)
					self:EmitSound("snds_jack_gmod/liquid_load.wav", 65, math.random(90, 110))
				elseif(typ == JMod.EZ_RESOURCE_TYPES.WATER)then
					local Aqua = self:GetWater()
					local Missing = self.MaxWater - Aqua
					if(Missing < 1)then return 0 end
					Accepted=math.min(Missing,amt)
					self:SetWater(Aqua+Accepted)
					self:EmitSound("snds_jack_gmod/liquid_load.wav", 65, math.random(90, 110))
				elseif(typ == JMod.EZ_RESOURCE_TYPES.CHEMICALS)then
					local Chem = self:GetChemicals()
					local Missing = self.MaxChemicals - Chem
					if(Missing < 1)then return 0 end
					Accepted=math.min(Missing,amt)
					self:SetChemicals(Chem+Accepted)
					self:EmitSound("snds_jack_gmod/liquid_load.wav", 65, math.random(90, 110))
				elseif(typ==JMod.EZ_RESOURCE_TYPES.OIL)then
					local Oil = self:GetOil()
					local Missing = self.MaxOil - Oil
					if(Missing < 1)then return 0 end
					Accepted=math.min(Missing,amt)
					self:SetOil(Oil+Accepted)
					self:EmitSound("snds_jack_gmod/liquid_load.wav", 65, math.random(90, 110))
				elseif(typ==JMod.EZ_RESOURCE_TYPES.FUEL)then
					if (self.FlexFuels and table.HasValue(self.FlexFuels, typ)) then
						local Powa = self:GetElectricity()
						local Missing = self.MaxElectricity - Powa
						if(Missing <= 0)then return 0 end
						local PotentialPower = math.min(Missing, amt * JMod.EnergyEconomyParameters.BasePowerConversions[typ])
						self:SetElectricity(Powa + PotentialPower)
						Accepted = PotentialPower / JMod.EnergyEconomyParameters.BasePowerConversions[typ]
					else
						local Fuel = self:GetFuel()
						local Missing = self.MaxFuel - Fuel
						if(Missing < 1)then return 0 end
						Accepted = math.min(Missing, amt)
						self:SetFuel(Fuel + Accepted)
					end
					self:EmitSound("snds_jack_gmod/liquid_load.wav", 65, math.random(90, 110))
				elseif(typ==JMod.EZ_RESOURCE_TYPES.COAL)then
					if (self.FlexFuels and table.HasValue(self.FlexFuels, typ)) then
						local Powa = self:GetElectricity()
						local Missing = self.MaxElectricity - Powa
						if(Missing <= 0)then return 0 end
						local PotentialPower = math.min(Missing, amt * JMod.EnergyEconomyParameters.BasePowerConversions[typ])
						self:SetElectricity(Powa + PotentialPower)
						Accepted = PotentialPower / JMod.EnergyEconomyParameters.BasePowerConversions[typ]
					else
						local Coal = self:GetCoal()
						local Missing = self.MaxCoal - Coal
						if(Missing < 1)then return 0 end
						Accepted = math.min(Missing, amt)
						self:SetCoal(Coal + Accepted)
					end
					self:EmitSound("Boulder.ImpactSoft", 65, math.random(90, 110))
				elseif(typ==JMod.EZ_RESOURCE_TYPES.WOOD)then
					if (self.FlexFuels and table.HasValue(self.FlexFuels, typ)) then
						local Powa = self:GetElectricity()
						local Missing = self.MaxElectricity - Powa
						if(Missing <= 0)then return 0 end
						local PotentialPower = math.min(Missing, amt * JMod.EnergyEconomyParameters.BasePowerConversions[typ])
						self:SetElectricity(Powa + PotentialPower)
						Accepted = PotentialPower / JMod.EnergyEconomyParameters.BasePowerConversions[typ]
					else
						local Wood = self:GetWood()
						local Missing = self.MaxWood - Wood
						if(Missing < 1)then return 0 end
						Accepted = math.min(Missing, amt)
						self:SetWood(Wood + Accepted)
					end
					self:EmitSound("Wood.ImpactSoft", 65, math.random(90, 110))
				elseif (string.find(typ, " ore"))or(typ==JMod.EZ_RESOURCE_TYPES.SAND) then
					if(self.GetOreType and (self:GetOreType() == "generic" or typ == self:GetOreType())) then
						self:SetOreType(typ)
						local COre = self:GetOre()
						local Missing = self.MaxOre - COre
						if(Missing <= 0)then return 0 end
						Accepted = math.min(Missing, amt)
						self:SetOre(COre + Accepted)
						self:EmitSound("Boulder.ImpactSoft", 65, math.random(90, 110))
					end
				end
				if self.ResourceLoaded then self:ResourceLoaded(typ, Accepted) end
				self.NextRefillTime = Time + 1
				return math.ceil(Accepted)
			end
		end
		return 0
	end

	-- Entity save/dupe functionality
	function ENT:PostEntityPaste(ply, ent, createdEntities)
		local Time = CurTime()
		JMod.SetEZowner(self, ply, true)
		ent.NextRefillTime = Time + 1
		if ent.NextUseTime then
			ent.NextUseTime = Time + 1
		end
	end

elseif(CLIENT)then
	net.Receive("JMod_MachineSync", function(len, ply)
		local Ent = net.ReadEntity()
		local NewSpecs = net.ReadTable()
		if IsValid(Ent) then
			for specName, value in pairs(NewSpecs) do
				Ent[specName] = value
			end
		end
	end)

	function ENT:Initialize()
		self:SetModel(self.Model)
		if self.ClientOnly then return end
		self.StaticPerfSpecs.BaseClass=nil
		self.DynamicPerfSpecs.BaseClass=nil
		self:InitPerfSpecs()
		if(self.CustomInit)then self:CustomInit() end
	end

	function ENT:OnRemove()
		if self.Mdl or self.CSmodels then
			JMod.SafeRemoveCSModel(self, IsValid(self.Mdl) and self.Mdl, self.CSmodels)
		end
	end
end
