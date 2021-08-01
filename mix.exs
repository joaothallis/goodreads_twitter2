defmodule GoodreadsTwitter.MixProject do
  use Mix.Project

  def project do
    [
      app: :goodreads_twitter,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GoodreadsTwitter.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.1", only: [:dev, :test], runtime: false},
      {:oauther,
       git: "https://github.com/evanob/oauther.git",
       ref: "875581cbb0261b19fed1bd6bfd60d7513f6ce230", override: true},
      {:extwitter, "~> 0.12"}
    ]
  end
end
