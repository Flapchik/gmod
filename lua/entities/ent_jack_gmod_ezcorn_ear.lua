﻿-- Jackarunda 2023
AddCSLuaFile()
ENT.Type = "anim"
ENT.Author = "Jackarunda"
ENT.Information = "glhfggwpezpznore"
ENT.PrintName = "EZ Corn Cob"
ENT.Category = "JMod - EZ Misc."
ENT.Spawnable = false -- For now...
ENT.AdminOnly = false
ENT.JModEZstorable = true

if SERVER then
	function ENT:Initialize()
		self:SetModel("models/jmod/props/plants/corn_cob.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(true)
		self:SetUseType(SIMPLE_USE)
		---
		local Phys = self:GetPhysicsObject()
		timer.Simple(.01, function()
			if IsValid(Phys) then
				Phys:SetMass(5)
				Phys:Wake()
			end
		end)
		---
		self.LastTouchedTime = CurTime()
		self.EZremoveSelf = self.EZremoveSelf or false
	end

	function ENT:PhysicsCollide(data, physobj)
		if data.DeltaTime > 0.2 and data.Speed > 50 then
			self:EmitSound("physics/body/body_medium_impact_soft7.wav", 60, math.random(70, 130))
		end
	end

	function ENT:Use(ply)
		local Time = CurTime()
		local Alt = ply:KeyDown(JMod.Config.General.AltFunctionKey)

		if Alt then
			ply.EZnutrition = ply.EZnutrition or {
				NextEat = 0,
				Nutrients = 0
			}
			if ply.EZnutrition.NextEat < Time then
				if ply.EZnutrition.Nutrients < 100 then
					sound.Play("snds_jack_gmod/nom" .. math.random(1, 5) .. ".wav", self:GetPos(), 60, math.random(90, 110))

					ply.EZnutrition.NextEat = Time + 5 / JMod.Config.FoodSpecs.EatSpeed
					ply.EZnutrition.Nutrients = ply.EZnutrition.Nutrients + 5 * JMod.Config.FoodSpecs.ConversionEfficiency

					if ply.getDarkRPVar and ply.setDarkRPVar and ply:getDarkRPVar("energy") then
						local Old = ply:getDarkRPVar("energy")
						ply:setDarkRPVar("energy", math.Clamp(Old + 5 * JMod.Config.FoodSpecs.ConversionEfficiency, 0, 100))
					end

					self:Remove()

					ply:PrintMessage(HUD_PRINTCENTER, "nutrition: " .. ply.EZnutrition.Nutrients .. "/100")
				else
					JMod.Hint(ply, "nutrition filled")
				end
			end
		else
			ply:PickupObject(self)
			JMod.Hint(ply, "alt to eat")
			self.EZremoveSelf = false
			self.LastTouchedTime = Time
		end
	end

	function ENT:Degenerate() 
		constraint.RemoveAll(self)
		self:SetNotSolid(true)
		self:DrawShadow(false)
		self:GetPhysicsObject():EnableCollisions(false)
		self:GetPhysicsObject():EnableGravity(false)
		self:GetPhysicsObject():SetVelocity(Vector(0, 0, -5))
		timer.Simple(2, function()
			if (IsValid(self)) then self:Remove() end
		end)
	end

	function ENT:Think()
		local Time = CurTime()
		if self.EZremoveSelf and (Time - 60 > self.LastTouchedTime) then
			self:Degenerate()
		end
	end

	function ENT:GravGunPickupAllowed(ply)
		--if not(self:IsConstrained() or self:GetPhysicsObject():IsMotionEnabled()) then
			return true
		--end
	end

elseif CLIENT then
	function ENT:Initialize()
		--
	end

	function ENT:Draw()
		self:DrawModel()
	end
	language.Add("ent_jack_gmod_ezcorn_ear", "EZ Corn Cob")
end
