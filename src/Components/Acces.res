@react.component
let make = () => {
  <div className="flex flex-col gap-4 text-center bg-primary-darkBlueIntro m-4 p-8 rounded-2xl lg:max-w-3xl lg:mx-auto -mb-20 z-10 shadow-lg">
    <div className="flex flex-col gap-2">
      <div className="text-xl font-bold"> {"Get early access today"->React.string} </div>
      <div>
        {"It only takes a minute to sign up and our free starter tier is extremely generous. If you have any questions, our support team would be happy to help you."->React.string}
      </div>
    </div>
    <div className="flex flex-col lg:flex-row gap-4 justify-center items-center">
      <input className="w-72 py-4 lg:py-4 px-8 rounded-full text-primary-darkBlueIntro" type_="email" placeholder="E-mail address" />
      <Button> {"Get Started For Free"->React.string} </Button>
    </div>
  </div>
}
