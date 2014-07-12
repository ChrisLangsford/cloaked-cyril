json.periods @expense do |e|
	json.period e.period_end_date
	json.habby e.habby.to_f
	json.bank e.bank
	json.equip e.equip
	json.stat e.stat
	json.comp e.comp
	json.tel e.tel
	json.misc e.misc
end
