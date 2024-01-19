@react.component
let make = () => {
  let (email, setEmail) = React.useState(() => "")

  let handleChange = e => {
    let val = %raw("e.target.value")
    setEmail(_ => val)
  }

  let validate = (target, substring) => Js.Re.fromString("^" ++ substring)->Js.Re.test_(target)

  let isValidEmail = email->validate("[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")

  let showWarn = (email, validity) =>
    switch validity {
    | true => <> </>
    | false =>
      email === ""
        ? <> </>
        : <div className="text-accent-lightRed text-left">
            {"Please enter a valid email"->React.string}
          </div>
    }

  <div
    className="relative flex flex-col gap-4 text-center bg-primary-darkBlueIntro m-4 p-8 rounded-2xl lg:max-w-3xl lg:mx-auto -mb-24 shadow-lg">
    <div className="flex flex-col gap-2">
      <div className="text-xl font-bold"> {"Get early access today"->React.string} </div>
      <div>
        {"It only takes a minute to sign up and our free starter tier is extremely generous. If you have any questions, our support team would be happy to help you."->React.string}
      </div>
    </div>
    <div className="flex flex-col lg:flex-row gap-4 justify-center items-center">
      <input
        className="w-full py-4 lg:py-4 px-8 rounded-full text-primary-darkBlueIntro"
        type_="email"
        placeholder="E-mail address"
        value={email}
        onChange={e => handleChange(e)}
      />
      <Button addStyle={"w-full"}> {"Get Started For Free"->React.string} </Button>
    </div>
    {showWarn(email, isValidEmail)}
  </div>
}
