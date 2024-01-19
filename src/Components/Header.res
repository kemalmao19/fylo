@react.component
let make = () => {
  <div className="flex justify-between items-center p-6 lg:p-12 font-serif z-50 bg-primary-darkBlueIntro">
    <div id="logo" className="">
      <img src="/assets/logo.svg" />
    </div>
    <div className="flex gap-4 justify-center items-center">
      <a className="hover:font-bold hover:underline transition-all duration-100 ease-in-out" href="#features"> {React.string("Features")} </a>
      <a className="hover:font-bold hover:underline transition-all duration-100 ease-in-out" href="#teams"> {React.string("Teams")} </a>
      <a className="hover:font-bold hover:underline transition-all duration-100 ease-in-out" href="#"> {React.string("Sign in")} </a>
    </div>
  </div>
}
