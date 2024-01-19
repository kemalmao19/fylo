let title = "All your files in one secure location, accessible anywhere."
let intro = " Fylo stores all your most important files in one secure location. Access them wherever you need, share and collaborate with friends, family, and co-workers."

@react.component
let make = () => {
  <section className="relative flex flex-col justify-center items-center gap-4 p-8 lg:mb-20 lg:mx-auto bg-primary-darkBlueIntro">
  <img src="/assets/bg-curvy-desktop.svg" className="absolute bottom-0"/>
    <div className="z-10">
      <img src="/assets/illustration-intro.png" />
    </div>
    <div className="flex flex-col gap-4 z-10 lg:max-w-xl">
      <div className="text-center title"> {React.string(title)} </div>
      <div className="text-center "> {React.string(intro)} </div>
      <div className="mt-4"><Button>{React.string("Get Started")}</Button></div>
    </div>
  </section>
}
