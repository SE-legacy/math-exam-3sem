#import "functions.typ": lets
#let load_tickets = () => {
	set heading(numbering: (..nums) => {
		let number = nums.pos().map(str).slice(0).join(".")
		if nums.pos().len() == 1 {
			"Вопрос " + number + "."
		}
	},
    hanging-indent: 0pt
	)
	show heading.where(level: 1): it => {
		pagebreak()
		it
	}
	let first = 1
	let last = 39
	for ticketid in range(first, last + 1) {
		let ticketname = str(ticketid) + ".typ"
		while ticketname.len() < str(last).len() + ".typ".len() {
			ticketname = "0" + ticketname
		}
		include "tickets/" + ticketname
	}
}
#let generate_title() = {
	//text(strings.title.minobrnauki)
	v(0.2em)
	//text(weight: "bold", strings.title.sgu)
	set align(center)
	v(3cm)
	text(weight: "bold", upper("Математический анализ") + "\n")
	[*3 семестр*]
	par("Материалы для подготовки к экзамену")
	[_Вдохновляясь методическим пособием Людмилы Владимировны Сахно_]
	v(1.5cm)
	set align(left)
	text("Данила Григорьев" + "\n")
	text("Смирнов Егор" + "\n")
	text("Роберт Толстов" + "\n")
	text("Артём Рудяк" + "\n")
	v(1fr)
	set align(center)
	text("г. Саратов" + " " + str(datetime.today().year()))
	pagebreak()
}

#generate_title()

#set page(numbering: "1")

#outline(title: "Программа экзамена", target: heading.where(level: 1))

#load_tickets()

#align(center)[
  #v(1em)
  *Успехов на экзамене!*
]

#heading(outlined: false)[Примечание]
Условные обозначения:
- #lets --- пусть
- $f in C$ --- непрерывная функция
- $f in C^n$ --- непрерывная $n$-дифференцируемая функция, $f in C^1$ --- непрерывно дифференцируемая функция
