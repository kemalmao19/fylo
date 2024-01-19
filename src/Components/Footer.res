type contact = {icon: string, content: string}
let contact = [
  {
    icon: "/assets/icon-location.svg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
  },
  {
    icon: "/assets/icon-phone.svg",
    content: "+1-543-123-4567",
  },
  {
    icon: "/assets/icon-email.svg",
    content: "bJpjA@example.com",
  },
]

@react.component
let make = () => {
  <div className="flex flex-col gap-4 bg-primary-darkBlueFooter p-8 lg:px-20 lg:pt-52 lg:-z-50">
    <div>
      <img src="/assets/logo.svg" />
    </div>
    <div className="grid grid-cols-1 lg:grid-cols-4 gap-8">
      <div>
        {contact
        ->Belt.Array.map(d => {
          <div className="flex gap-4 my-4 items-center">
            <div>
              {d.icon === "/assets/icon-location.svg"
                ? <img src={d.icon} width="50" height="50" />
                : <img src={d.icon} />}
            </div>
            <div> {d.content->React.string} </div>
          </div>
        })
        ->React.array}
      </div>
      <div></div>
      <div className="flex flex-col gap-4">
        <a className="hover:underline" href="#"> {"About Us"->React.string} </a>
        <a className="hover:underline" href="#"> {"Jobs"->React.string} </a>
        <a className="hover:underline" href="#"> {"Press"->React.string} </a>
        <a className="hover:underline" href="#"> {"Blog"->React.string} </a>
      </div>
      <div className="flex flex-col gap-4">
        <a className="hover:underline" href="#"> {"Contact Us"->React.string} </a>
        <a className="hover:underline" href="#"> {"Terms"->React.string} </a>
        <a className="hover:underline" href="#"> {"Privacy"->React.string} </a>
      </div>
    </div>
    <div>
    </div>
  </div>
}
