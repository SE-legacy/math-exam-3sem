#let load_tickets = () => {
	let tickets_offset = 1
	set heading(numbering: (..nums) => {
		let number = nums.pos().map(str).slice(1).join(".")
		if nums.pos().len() == tickets_offset + 1 {
			"Вопрос " + number + "."
		}
	}, supplement: [Вопрос]
		, offset: tickets_offset)
	show heading.where(level: tickets_offset + 1): it => {
		pagebreak()
		it
	}
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

= Методическое пособие по математическому анализу
Материалы для подготовки к экзамену.\
Григорьев Данила, Толстов Роберт, Рудяк Артём, Смирнов Егор. 2025 год.
#outline(title: "Вопросы", target: heading.where(level: 2, supplement: [Вопрос]))

= Ответы
#load_tickets()
== Примечание
Условные обозначения:
- $f in C$ --- непрерывная функция
- $f in C^n$ --- непрерывная $n$-дифференцируемая функция, $f in C^1$ --- непрерывно дифференцируемая функция
