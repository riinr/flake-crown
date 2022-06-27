{
  description = ''Wrapper for libclang C headers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-pmunch-libclang-develop".dir   = "develop";
  inputs."github-pmunch-libclang-develop".owner = "nim-nix-pkgs";
  inputs."github-pmunch-libclang-develop".ref   = "master";
  inputs."github-pmunch-libclang-develop".repo  = "github-pmunch-libclang";
  inputs."github-pmunch-libclang-develop".type  = "github";
  inputs."github-pmunch-libclang-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-pmunch-libclang-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-pmunch-libclang-v0_59".dir   = "v0_59";
  inputs."github-pmunch-libclang-v0_59".owner = "nim-nix-pkgs";
  inputs."github-pmunch-libclang-v0_59".ref   = "master";
  inputs."github-pmunch-libclang-v0_59".repo  = "github-pmunch-libclang";
  inputs."github-pmunch-libclang-v0_59".type  = "github";
  inputs."github-pmunch-libclang-v0_59".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-pmunch-libclang-v0_59".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}