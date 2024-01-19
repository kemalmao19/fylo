@react.component
let make = (~children) => {
  <div className="flex justify-center items-center">
    <a href="#" className="bg-accent-blue py-4 px-12 rounded-full font-bold font-serif"> {children} </a>
  </div>
}
