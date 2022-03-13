{
  description = ''Generic tokenizer written in Nim language 👑 Powered by Nim's Macros'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."toktok-main".dir   = "main";
  inputs."toktok-main".owner = "nim-nix-pkgs";
  inputs."toktok-main".ref   = "master";
  inputs."toktok-main".repo  = "toktok";
  inputs."toktok-main".type  = "github";
  inputs."toktok-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toktok-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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