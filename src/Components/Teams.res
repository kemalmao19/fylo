let title = "Stay productive, wherever you are"
let desc1 = "Never let location be an issue when accessing your files. Fylo has you covered for all of your file storage needs."
let desc2 = "Securely share files and folders with friends, family and colleagues for live collaboration. No email attachments required!"

@react.component
let make = () => {
  <section id="teams" className="grid grid-cols-1 lg:grid-cols-2 gap-4 p-8 lg:p-20">
    <div>
      <img src="/assets/illustration-stay-productive.png" />
    </div>
    <div className="flex flex-col justify-center gap-4">
      <div className="title"> {title->React.string} </div>
      <div className="desc"> {desc1->React.string} </div>
      <div className="desc"> {desc2->React.string} </div>
      <div className="flex gap-2 text-accent-cyan">
        <a className="hover:underline" href="#"> {"See how Fylo works"->React.string} </a>
        <div className="flex justify-center items-center">
          <img src="/assets/icon-arrow.svg" />
        </div>
      </div>
    </div>
  </section>
}
