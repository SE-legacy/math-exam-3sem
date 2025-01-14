= Методическое пособие по математическому анализу
Материалы для подготовки к экзамену.\
Григорьев Данила, Толстов Роберт, Рудяк Артём, Смирнов Егор. 2025 год.
#outline(title: "Вопросы", target: heading.where(level: 2, supplement: [Вопрос]))
#set math.equation(numbering: "(1)", supplement: [])

= Ответы
#{
	let load_tickets = () => {
		let tickets_offset = 1
		set heading(numbering: (..nums) => {
			let number = nums.pos().map(str).slice(1).join(".")
			if number != none {
				"Вопрос " + number + "."
			}
		}, supplement: [Вопрос], offset: tickets_offset)
		let first = 1
		let last = 35
		for ticketid in range(first, last + 1) {
			let ticketname = str(ticketid) + ".typ"
			while ticketname.len() < str(last).len() + ".typ".len() {
				ticketname = "0" + ticketname
			}
			counter(heading).update((..nums) => {
				let arr = nums.pos()
				if arr.len() > tickets_offset {
					arr.at(tickets_offset) = ticketid - 1
				}
				return arr
			})
			include "tickets/" + ticketname
		}
	}
	load_tickets()
}
