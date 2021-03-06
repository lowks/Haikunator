defmodule Haikunator.Mixfile do
  use Mix.Project

  def project do
    [app: :haikunator,
     description: "Generate Heroku-like memorable random names to use in your apps or anywhere else.",
     version: "1.0.0",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: [contributors: ["Kash Nouroozi"],
               licenses: ["MIT"],
               links: %{"GitHub" => "https://github.com/knrz/Haikunator"}
    ]]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    []
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.7", only: :dev},
     {:inch_ex, only: :docs},
     {:array, "~> 1.0.1"}]
  end
end
