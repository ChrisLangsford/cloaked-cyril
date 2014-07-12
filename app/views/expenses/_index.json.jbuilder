json.periods @expense do |e|
	json.period e.period_end_date
	json.habby e.habby
	json.bank e.bank
	json.equip e. equip
	json.stat e.stat
	json.comp e.comp
	json.misc e.misc
end
