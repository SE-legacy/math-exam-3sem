#import "functions.typ": lets
#let prev = none
#let load_tickets = () => {
	let tickets_offset = 1
	set heading(numbering: (..nums) => {
		let number = nums.pos().map(str).slice(1).join(".")
		if nums.pos().len() == tickets_offset + 1 {
			"Вопрос " + number + "."
		}
	}, supplement: [Вопрос]
		, offset: tickets_offset)
	show heading.where(level: tickets_offset + 1, supplement: [Вопрос]): it => {
		/*let h = query(heading.where(level: tickets_offset + 1, supplement: [Вопрос]), here()).rev()
		//[#{tickets_offset + 1}]
		if h.len() > 0 {
			[#h.at(0).fields()]
		}*/
		//set page(height: )
		/*let i = counter(heading).at(<heading>)
		[#i]
		prev = here()*/
		/*context {
			let loc = metadata.where(value: "ticket_end").before(here())
			let selector = heading.where(level: tickets_offset + 1, supplement: [Вопрос]).before(inclusive: false, loc)
			let h = query(selector).rev()
			if h.len() > 0 {
				let pos = loc[0].location().position()
				[#h.at(0).fields()]
			}
			set page(height: 10pt)
		}*/

		pagebreak()
		[#metadata("ticket_end") #it #metadata("ticket_begin") <heading>]
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
#set page(background: rect(width: 100% - 2.5cm, height: 100% - 2.5cm, stroke: black))
#load_tickets()
