@react.component
let make = (~children, ~addStyle) => {
  <div className={"flex justify-center items-center " ++ addStyle}>
    <a href="#" className={"bg-gradient-to-r from-accent-cyan to-accent-blue py-4 px-12 rounded-full font-bold font-serif w-full text-center"}> {children} </a>
  </div>
}
