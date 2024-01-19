type data = {
  title: string,
  text: string,
  image: string,
}

let featuresData = [
  {
    title: "Access your files, anywhere",
    text: "The ability to use a smartphone, tablet, or computer to access your account means your files follow you everywhere.",
    image: "/assets/icon-access-anywhere.svg",
  },
  {
    title: "Security you can trust",
    text: "2-factor authentication and user-controlled encryption are just a couple of the security features we allow to help secure your files.",
    image: "/assets/icon-security.svg",
  },
  {
    title: "Real-time collaboration",
    text: "Securely share files and folders with friends, family and colleagues for live collaboration. No email attachments required.",
    image: "/assets/icon-collaboration.svg",
  },
  {
    title: "Store any type of file",
    text: "Whether you're sharing holidays photos or work documents, Fylo has you covered allowing for all file types to be securely stored and shared.",
    image: "/assets/icon-any-file.svg",
  },
]

@react.component
let make = () => {
  <div id="features" className="grid grid-cols-1 lg:grid-cols-2 gap-8 my-12 lg:max-w-3xl lg:m-auto">
    {featuresData->Belt.Array.mapWithIndex((index, data) => {
      <section key={index|>Belt.Int.toString} className="flex flex-col gap-4 items-center p-8 ">
        <div>
          <img src={data.image} />
        </div>
        <div className="text-center text-xl font-bold"> {React.string(data.title)} </div>
        <div className="text-center "> {React.string(data.text)} </div>
      </section>
    })->React.array}
  </div>
}
