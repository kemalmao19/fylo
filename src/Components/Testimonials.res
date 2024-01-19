type data = {
  name: string,
  title: string,
  content: string,
  image: string,
}
let data = [
  {
    name: "Satish Patel",
    title: "Founder & CEO, Huddle",
    content: "Fylo has improved our team productivity by an order of magnitude. Since making the switch our team has become a well-oiled collaboration machine.",
    image: "/assets/profile-1.jpg",
  },
  {
    name: "Bruce McKenzie",
    title: "Founder & CEO, Huddle",
    content: "Fylo has improved our team productivity by an order of magnitude. Since making the switch our team has become a well-oiled collaboration machine.",
    image: "/assets/profile-2.jpg",
  },
  {
    name: "Iva Boyd",
    title: "Founder & CEO, Huddle",
    content: "Fylo has improved our team productivity by an order of magnitude. Since making the switch our team has become a well-oiled collaboration machine.",
    image: "/assets/profile-3.jpg",
  },
]

@react.component
let make = () => {
  <section className="relative p-12 lg:p-20">
  <img src="/assets/bg-quotes.png" className="absolute top-2 lg:top-12 left-10 lg:left-18 -z-10"/>
    <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
      {data
      ->Belt.Array.mapWithIndex((i, d) => {
        <div key={i->Belt.Int.toString} className="flex flex-col gap-4 p-8 bg-primary-darkBlueTestimonials rounded-lg">
          <div> {d.content->React.string} </div>
          <div className="flex gap-2 items-center">
            <div>
              <img className="rounded-full" src={d.image} width="30" height="30" />
            </div>
            <div>
              <div className="font-bold"> {d.name->React.string} </div>
              <div className="text-xs"> {d.title->React.string} </div>
            </div>
          </div>
        </div>
      })
      ->React.array}
    </div>
  </section>
}
